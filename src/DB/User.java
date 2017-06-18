package DB;

/**
 * Created by Liruiji on 2017/6/12.
 */
public class User {

        protected String password;
        protected String username;
        public User(String username, String password) {
            super();
            this.password = password;
            this.username = username;
        }

        @Override
        public String toString() {
            return "User [password=" + password + ", username=" + username + "]";
        }

        public String getUsername() {
            return username;
        }

        public void setUsername(String username) {
            this.username = username;
        }

        public String getPassword() {
            return password;
        }

        public void setPassword(String password) {
            this.password = password;
        }
    }
