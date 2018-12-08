# Manage serverless payments in applications
## Authentication
## Scheduling
### Stripe customer: 
Firebase auth -> profile -> identify -> authentication id
- cloud function -> create customer with Stripe
- cloud function -> write customer id to `firestore` ()
- Final: whenever a customer register, create profile using the customer email address on stripe
### Create stripe payment method
- validate credit first time
- let stripe process then store result to firestore
### Make a payment
- writes charge to firestore
- cloud function triggered
- server stripe process payment
- testing errors and decides if can retry -> do retries.
### Handling refunds
- client writes refund to store
- admin writes approval
- cloud function triggered
- server stripe sdk processes refunds
- double check!!! (check if authorized person triggered the refund)
