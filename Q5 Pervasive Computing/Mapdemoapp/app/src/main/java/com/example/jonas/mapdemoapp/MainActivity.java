package com.example.jonas.mapdemoapp;


import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.Profile;
import com.facebook.ProfileTracker;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginResult;
import com.facebook.login.widget.LoginButton;

import org.json.JSONObject;


public class MainActivity extends AppCompatActivity {
    private LoginButton loginButton;
    private CallbackManager callbackManager;
    private String name;
    private String id;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        FacebookSdk.sdkInitialize(getApplicationContext());
        setContentView(R.layout.activity_main);
        loginButton = (LoginButton)findViewById(R.id.login_button);
        loginButton.setReadPermissions("public_profile");
        callbackManager = CallbackManager.Factory.create();
        ProfileTracker profileTracker = new ProfileTracker() {
            @Override
            protected void onCurrentProfileChanged(Profile profile, Profile profile1) {


                //Listen for changes to the profile or for a new profile: update your
                //user data, and launch the main activity afterwards. If my user has just logged in,
                //I make sure to update his information before launching the main Activity.
                if (profile1 != null) {
                    name = profile1.getName();
                    TextView textView = (TextView) findViewById(R.id.Welcome);
                    textView.setText("Welcome: " + name);
                }else{
                    name = null;
                    TextView textView = (TextView) findViewById(R.id.Welcome);
                    textView.setText("Welcome");
                }


            }
        };
        profileTracker.startTracking();
        loginButton.registerCallback(callbackManager, new FacebookCallback<LoginResult>() {

            @Override
            public void onSuccess(LoginResult loginResult) {
                id = loginResult.getAccessToken().getUserId();
                if (Profile.getCurrentProfile() == null) {
                    Profile.fetchProfileForCurrentAccessToken();
                    Profile profile = Profile.getCurrentProfile();
                }else {
                    Profile profile = Profile.getCurrentProfile();
                    name = profile.getName();
                }

            }

            @Override
            public void onCancel() {
                System.out.println("Cancel");
            }

            @Override
            public void onError(FacebookException e) {
                System.out.println("Error");
            }
        });


        if (Profile.getCurrentProfile() != null) {
            name = Profile.getCurrentProfile().getName();
            TextView textView = (TextView) findViewById(R.id.Welcome);
            textView.setText("Welcome: " + name);
        }else {
            TextView textView = (TextView) findViewById(R.id.Welcome);
            textView.setText("Welcome");
        }


    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        // if you don't add following block,
        // your registered `FacebookCallback` won't be called

        if (callbackManager.onActivityResult(requestCode, resultCode, data)) {
            return;
        }
    }

    public void clickButton(View view){

        String t = ((EditText) findViewById(R.id.longitude)).getText().toString();
        String t2 = ((EditText) findViewById(R.id.latitude)).getText().toString();

        System.out.println(t + " + " + t2);
        Intent intent = new Intent(this, MapsActivity.class);
        intent.putExtra("longtitude", Double.parseDouble(t));
        intent.putExtra("latitude", Double.parseDouble(t2));
    //    name = Profile.getCurrentProfile().getName();
        System.out.println(name);
        intent.putExtra("name", name);
        intent.putExtra("id", id);

        startActivity(intent);
    }


}
