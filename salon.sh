#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=salon -c"

MAIN_MENU () {
  echo $1
  # display services
}

echo -e "\n\n~~~~~ MY SALON ~~~~~\n"
MAIN_MENU "Welcome to My Salon, how can I help you?"
SERVICES=$($PSQL "SELECT service_id, name FROM services")
echo "$SERVICES"