#! /bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~~ MY SALON ~~~~~\n"

MAIN_MENU(){
  AVAILABLE_SERVICES=$($PSQL "SELECT service_id, name FROM services")
  echo -e "Welcome to My Salon, How may I help you?\n"

  echo -e "$AVAILABLE_SERVICES" | while read SERVICE_ID BAR SERVICE_NAME
  do
    echo -e "$SERVICE_ID) $SERVICE_NAME"
  done

  read SERVICE_SELECTION
}

MAIN_MENU