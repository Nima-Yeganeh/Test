#!/bin/bash

error_message="Error: Error establishing a database connection."

if [[ $error_message == *"Error"* ]]; then
	echo "Error"
else
	echo "Not error"
fi

