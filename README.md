## Stars

a ruby on rails 5 example app to learn about testing.

clone this repository, then

    bundle   

If you run into problems with capybara-webkit, see [install instructions](https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit). after everything installs correctly go on:

    rake db:migrate
    rake db:seed
    rails server

now point your browser at the homepage at http://localhost:3000/

You will be asked to

* write unit tests for models
* write feature tests with capibara that test non-js features
* write feature tests with poltergeist that test js features

To run the tests

    rails test


# ANTWORTEN

# Aufgabe 1
Jaaaa!

# Aufgabe 2
`test/models/user_test.rb`

# Aufgabe 3
```
Run options: --seed 39231

# Running:

..........

Finished in 1.614760s, 6.1929 runs/s, 11.1472 assertions/s.

10 runs, 18 assertions, 0 failures, 0 errors, 0 skips
```

# Aufgabe 4
siehe Code

# Aufgabe 5
`test/features/list_of_users_test.rb`

## 1. Test
Auf der User-Seite wird überprüft ob es eine Überschrift mit "Users" gibt, aber nur im Bereich bis zu dem Button mit dem value "load info"

## 2. Test
Auf der User-Seite wird ein Screenshot gemacht. Es wird geschaut ob es eine Überschrift mit "Users" und einen Button mit "load info" gibt.

Der erste Test verwendet kein JavaScript, der zweite hingegen schon.

Auf dem Screenshot sollten nur die Testdaten sichtbar sein.

Der Screenshot liegt unter `tmp/capybara/list_of_users_screenshot.png`

Es sind nur die Testdaten sichtbar.

# Aufgabe 6
Mit Validation-Fehler:
`Users New User 1 error prohibited this user from being saved: Last name can't be blank First name Middle initial Last name No stars Back".``
