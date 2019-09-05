#include <SubscriberId.hpp>

namespace details 
{

  SubscriberId::SubscriberId(osapi::MsgQueue* mq_, unsigned long id_)
  {
    /* Make your own implementation here... */
    this->mq_ = mq_;  // Set variables
    this->id_ = id_;
  }
  
  
  /** Send the message to the subscriber
   */
  void SubscriberId::send(osapi::Message* m) const
  {
    /* What do you do when you want to send to a reciever?
       What do you need to know? */
    mq_->send(id_, m);  // simple call of send() with the msg id and the msg itself.
  }


}
