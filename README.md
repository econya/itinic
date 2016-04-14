## IT in Intentional Communities

Living in the ecovillage Sieben Linden in north of Germany, I struggle with my
tasks as software developer and systems administrator.

Being the only person with a severe IT background I realized that what I lack
is a network of like-minded people that are open for collaboration and
knowledge transfer/exchange.

itinic is an attempt to build a platform where like-minded people can register
and network to make our world a better place (in the long run) or show
that they are open and can be connected to, to make IT staff business of
Intentional Communities easier (in the short run).

Note that I am freakily busy and itinic is really just a hack.
It was created in my 'free' time (dont tell my wife or my friends) and I cannot
guarantee any maintenance effort.

## Usage

Note that everybody can register and thus see other peoples names.

## Implementation

itinic is released at the terms of the GPL v3 (or any later), which can be found in the git repository (COPYING).  Copyright 2016 Felix Wolfsteller.

## Installation

itinic is build with ruby on rails

  * System dependencies

  * Configuration
    - needed environment variables (mostly for email-sending and correct
      devise mails)
      - DEVISE_MAILER_SENDER (sender mail address)
      - DOMAIN
      - SMTP_SERVER
      - MAILER_DOMAIN
      - SMTP_USER
      - SMTP_PWD

  * Database setup
    - via `rake db:setup` (includes `rake db:seed` for initial technology tree).

  * How to run the test suite
    - `rake`

  * Deployment instructions (for dokku)
    * Initially
      - `dokku apps:create itinic`
      - `dokku postgres:create db.itinic`
      - `dokku postgres:link db.itinic itinic`
      - `dokku config:set itinic DEVISE_MAILER_SENDER="registered@it" \
        DOMAIN="i...de" SMTP_SERVER="smtp..." \
        MAILER_DOMAIN="it...de"\
        SMTP_USER="myuser@..."\
        SMTP_PWD="hardcorepass"`
      - `git remote add dokku dokku@yourhost:itinic`
      - `git push dokku`
      - `dokku run itinic rake db:migrate db:seed`
    * On updates
      - `git push dokku` (yay, isnt dokku cool?)
    * On migrations
      - `dokku run itinic rake db:migrate`

  * ...


