package com.example.demoapp;

import javax.validation.constraints.NotNull;

public class Greeting {
        @NotNull
        private String message;

        public Greeting() {
            super();
        }

        public Greeting(String message) {
            this.message = message;
        }

        /**
         * @param message the message to set
         */
        public void setMessage(String message) {
            this.message = message;
        }

        /**
         * @return the message
         */
        public String getMessage() {
            return message;
        }
}