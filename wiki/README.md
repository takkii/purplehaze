<div align="center">
  <p><h1>purplehaze.</h1></p>
  <img src="../public/images/haze.gif">
</div>

### 仕様の説明\

```markdown
# 検証済: 開発環境
・ Windows11 pro
```

```markdown
# GitHubから複製 ①
git clone git@github.com:takkii/purplehaze.git

# sheltered-girlでテンプレート生成 ②
heats purple

> ①と②は、どちらかを満たせばよい。

# プロジェクトに移動
cd purplehaze

# Rubygems依存ライブラリ解消
bundle update

# npmパッケージ更新
ncu -u

# yarnインストール
yarn install
yarn upgrade

# js/css、コンパイル
yarn build
yarn build:css
```

_※ 環境構築前提条件を満たすこと、リアルタイム顔認識システムでログを書き出すこと。_

#### ログイン

| [ユーザ側](http://localhost/users/sign_in) | [管理者側](http://localhost/admins/sign_in) |
| :----------------------------------------: | :-----------------------------------------: |

#### 新規機能追加

```ruby
# msys2 install
pacman -S mingw-w64-ucrt-x86_64-libyaml

# モデル作成
rails g model BlogComment review:text user_id:integer

# コントローラ作成
rails g controller blog_comments

# ローカルDB、入れ直し
rails db:migrate:reset
```

#### 起動

```ruby
# データセット
rails db:default_db

# データ入れ直し
rails db:environment:set RAILS_ENV=development
rails db:pg_default_db

# adminとuserのメールアドレスとパスワードを入れる。
rails c
```

#### 管理者側

```ruby
admin = Admin.create! do |u|
u.email = 'sound_gear_0830@yahoo.co.jp'
u.password = 'DQjZs!edkzrgbM$4VVte2!LZE'
u.password_confirmation = 'DQjZs!edkzrgbM$4VVte2!LZE'
end
```

#### ユーザ側

```ruby
user = User.create! do |u|
u.email = 'karuma.reason@gmail.com'
u.password = 'jbUuwYC-4lWO8JMFruPvePQGA'
u.password_confirmation = 'jbUuwYC-4lWO8JMFruPvePQGA'
end
```

_※ seedデータ内、整理。_

> git clone git@github.com:takkii/hyokaproject.git
>
> heats hyoka

_※ GitHubから複製、heatsコマンドでテンプレートのどちらでもよい。_

```python
cd hyokaproject

pip3 install -r requiremens.txt

mysql -u root -p

create database hyokaproject_develop;

exit

python manage.py migrate

python manage.py runserver localhost:80

rails s
```

> hyokaprojectでリアルタイム顔認識を行う → 認証完了ログを書き出す
>
> →effect.txtを生成する→purplehazeを起動する → 3段階認証確立完了✅️

### .env：設定

- [x] Windows 11 pro 25H2/ruby-3.4.9/pgroonga-4.0.6で動作を確認しました。

```ruby
# postgresユーザ
DATABASE_USER = "takkii"
# postgresユーザ、パスワード
DATABASE_PASSWORD = "20070920"
# 名無しの権兵衛: John Doe
EQUAL_PASSWORD = "Doe"
# 設定: ./ファイル名.txt
MEMBERS_CARD = "~/hyokaproject/"
# カード名: ファイル名
CARD_NAME = "effect.txt"
# システムバージョン名 xx-xx
SYSTEM_VERSION = "「♾️無幻♾️」"
# サーキットブレーカー: 失敗回数
FAILURE_NUMBER = "3"
# サーキットブレーカー: 分数を秒計算
WITHIN = "60"
```

[golden-eagle](https://github.com/takkii/golden_eagle/tree/main/wiki)を参考に、flare/meteorなどを使いeffect.txtを生成しclarifyで出力結果を確認してください。

_※ パープルヘイズを起動する前に、上記手順を行って下さい。_

#### RubyGems: 依存ライブラリのライセンス一覧

> license_finder

```ruby
Dependencies that need approval:
@esbuild/win32-x64, 0.28.2, MIT
@fortawesome/fontawesome-free, 7.3.1, "(CC-BY-4.0 AND OFL-1.1 AND MIT)"
@parcel/watcher, 2.6.0, MIT
@parcel/watcher-win32-x64, 2.6.0, MIT
@rails/ujs, 7.1.600, MIT
@types/node, 26.6.11, MIT
action_text-trix, 2.1.19, MIT
actioncable, 8.1.4.1, MIT
actionmailbox, 8.1.4.1, MIT
actionmailer, 8.1.4.1, MIT
actionpack, 8.1.4.1, MIT
actiontext, 8.1.4.1, MIT
actionview, 8.1.4.1, MIT
activejob, 8.1.4.1, MIT
activemodel, 8.1.4.1, MIT
activerecord, 8.1.4.1, MIT
activestorage, 8.1.4.1, MIT
activesupport, 8.1.4.1, MIT
addressable, 2.10.0, "Apache 2.0"
base64, 0.3.0, "Simplified BSD, ruby"
bcrypt, 3.1.22, MIT
bigdecimal, 4.1.3, "Simplified BSD, ruby"
bindex, 0.8.1, MIT
bootsnap, 1.26.2, MIT
bootswatch, 5.3.8, MIT
builder, 3.3.0, MIT
bundler, 4.1.1, MIT
capybara, 3.40.0, MIT
carrierwave, 3.1.4, MIT
childprocess, 4.1.0, MIT
chokidar, 5.0.0, MIT
coderay, 1.1.3, MIT
concurrent-ruby, 1.3.8, MIT
connection_pool, 3.0.3, MIT
crass, 1.0.8, MIT
cssbundling-rails, 1.4.3, MIT
csv, 3.3.7, "Simplified BSD, ruby"
date, 3.6.0, "Simplified BSD, ruby"
detect-libc, 2.1.2, "Apache 2.0"
devise, 5.0.4, MIT
devise-bootstrap-views, 1.1.0, MIT
devise-i18n, 1.16.1, MIT
diff-lcs, 1.6.2, "Artistic-1.0-Perl, GPL-2.0-or-later, MIT"
docile, 1.4.1, MIT
dotenv, 3.2.0, MIT
dotenv-rails, 3.2.0, MIT
drb, 2.2.3, "Simplified BSD, ruby"
erb, 6.0.7, "Simplified BSD, ruby"
erubi, 1.13.1, MIT
esbuild, 0.28.2, MIT
factory_bot, 6.7.0, MIT
factory_bot_rails, 6.5.1, MIT
faker, 3.8.0, MIT
feedjira, 3.2.6, MIT
ffi, 1.17.4, "New BSD"
fiddle, 1.1.8, "Simplified BSD, ruby"
font-awesome-sass, 6.7.2, MIT
globalid, 1.4.0, MIT
httparty, 0.25.1, MIT
i18n, 1.15.2, MIT
image_processing, 2.2.2, MIT
immutable, 5.2.1, MIT
io-console, 0.9.5, "Simplified BSD, ruby"
irb, 1.19.0, "Simplified BSD, ruby"
is-extglob, 2.1.1, MIT
is-glob, 4.0.3, MIT
jbuilder, 2.15.1, MIT
jquery, 4.1.0, MIT
jquery-ujs, 1.2.3, MIT
jsbundling-rails, 1.3.1, MIT
json, 3.2.0, ruby
kaminari, 1.3.3, MIT
kaminari-actionview, 1.3.3, MIT
kaminari-activerecord, 1.3.3, MIT
kaminari-core, 1.3.3, MIT
kaminari-i18n, 0.5.0, MIT
listen, 3.10.1, MIT
logger, 1.7.0, "Simplified BSD, ruby"
loofah, 2.25.3, MIT
mail, 2.9.1, MIT
marcel, 1.2.1, "Apache 2.0, MIT"
matrix, 0.4.3, "Simplified BSD, ruby"
method_source, 1.1.0, MIT
mini_mime, 1.1.5, MIT
minitest, 5.27.0, MIT
msgpack, 1.8.7, "Apache 2.0"
multi_xml, 0.9.1, MIT
net-imap, 0.6.8, "Simplified BSD, ruby"
net-pop, 0.1.2, "Simplified BSD, ruby"
net-protocol, 0.4.0, "Simplified BSD, ruby"
net-smtp, 0.5.2, "Simplified BSD, ruby"
nio4r, 2.7.5, "MIT, Simplified BSD"
nkf, 0.3.0, "Simplified BSD, ruby"
node-addon-api, 7.1.1, MIT
nokogiri, 1.19.7, MIT
observer, 0.1.2, "Simplified BSD, ruby"
orm_adapter, 0.5.0, MIT
ostruct, 0.6.3, "Simplified BSD, ruby"
paranoia, 3.1.0, MIT
pg, 1.7.0, "Simplified BSD"
picomatch, 4.0.7, MIT
pkg-config, 1.6.8, LGPLv2+
pp, 0.6.4, "Simplified BSD, ruby"
prettyprint, 0.2.1, "Simplified BSD, ruby"
prism, 2.1.0, MIT
propshaft, 1.3.2, MIT
pry, 0.16.1, MIT
public_suffix, 7.0.5, MIT
puma, 8.1.3, "New BSD"
pycall, 1.5.5, MIT
pygments-rouge-css, 0.1.0, MIT
racc, 1.8.1, "Simplified BSD, ruby"
rack, 3.2.9, MIT
rack-session, 2.1.2, MIT
rack-test, 2.3.0, MIT
rackup, 2.3.1, MIT
rails, 8.1.4.1, MIT
rails-controller-testing, 1.0.5, MIT
rails-dom-testing, 2.3.0, MIT
rails-html-sanitizer, 1.7.2, MIT
rails-i18n, 8.1.0, MIT
railties, 8.1.4.1, MIT
rake, 13.4.2, MIT
rb-fsevent, 0.11.2, MIT
rb-inotify, 0.11.1, MIT
rbs, 4.2.0, "Simplified BSD, ruby"
rdoc, 8.1.0, "GPLv2, ruby"
readdirp, 5.1.1, MIT
redcarpet, 3.6.1, MIT
regexp_parser, 2.13.4, MIT
reline, 0.7.0, ruby
responders, 3.2.1, MIT
rexml, 3.4.4, "Simplified BSD"
rinku, 2.0.6, ISC
rmagick, 7.3.1, MIT
roo, 4.0.0, MIT
rouge, 5.1.0, "MIT, Simplified BSD"
rspec, 3.13.2, MIT
rspec-core, 3.13.7, MIT
rspec-expectations, 3.13.6, MIT
rspec-mocks, 3.13.9, MIT
rspec-rails, 8.0.5, MIT
rspec-support, 3.13.8, MIT
rubyzip, 3.7.0, "Simplified BSD"
sanitize, 7.0.2, MIT
sass, 1.108.2, MIT
sassc, 2.4.0, MIT
sax-machine, 1.3.2, MIT
securerandom, 0.4.1, "Simplified BSD, ruby"
selenium-webdriver, 4.1.0, "Apache 2.0"
sheltered-girl, 4.1.4.2, Vim
simplecov, 0.22.0, MIT
simplecov-html, 0.13.2, MIT
simplecov_json_formatter, 0.1.4, MIT
source-map-js, 1.2.4, "New BSD"
spring, 4.7.0, MIT
spring-commands-rspec, 1.0.4, MIT
ssrf_filter, 1.6.0, MIT
stimulus-rails, 1.3.4, MIT
strscan, 3.1.8, "Simplified BSD, ruby"
thor, 1.5.0, MIT
timeout, 0.6.1, "Simplified BSD, ruby"
tsort, 0.2.0, "Simplified BSD, ruby"
turbo-rails, 2.0.23, MIT
tzinfo, 2.0.6, MIT
tzinfo-data, 1.2026.6, MIT
undici-types, 8.9.0, MIT
uri, 1.1.2, "Simplified BSD, ruby"
useragent, 0.16.11, MIT
warden, 1.2.9, MIT
wdm, 0.2.0, MIT
web-console, 4.3.0, MIT
webdrivers, 5.3.1, MIT
websocket-driver, 0.9.1, "Apache 2.0"
websocket-extensions, 0.3.0, "Apache 2.0"
xpath, 3.2.0, MIT
zeitwerk, 2.8.3, MIT
```

#### yarn: 依存ライブラリのライセンス一覧

> yarn licenses list

```javascript
yarn licenses v1.22.22
├─ (CC-BY-4.0 AND OFL-1.1 AND MIT)
│  └─ @fortawesome/fontawesome-free@7.3.1
│     ├─ URL: https://github.com/FortAwesome/Font-Awesome
│     ├─ VendorName: The Font Awesome Team
│     └─ VendorUrl: https://fontawesome.com/
├─ Apache-2.0
│  └─ detect-libc@2.1.2
│     ├─ URL: git://github.com/lovell/detect-libc.git
│     └─ VendorName: Lovell Fuller
├─ BSD-3-Clause
│  └─ source-map-js@1.2.4
│     ├─ URL: https://github.com/7rulnik/source-map-js.git
│     ├─ VendorName: Valentin 7rulnik Semirulnik
│     └─ VendorUrl: https://github.com/7rulnik/source-map-js
└─ MIT
   ├─ @esbuild/win32-x64@0.28.2
   │  └─ URL: git+https://github.com/evanw/esbuild.git
   ├─ @parcel/watcher-win32-x64@2.6.0
   │  └─ URL: https://github.com/parcel-bundler/watcher.git
   ├─ @parcel/watcher@2.6.0
   │  └─ URL: https://github.com/parcel-bundler/watcher.git
   ├─ @rails/ujs@7.1.600
   │  ├─ URL: https://github.com/rails/rails.git
   │  └─ VendorUrl: https://rubyonrails.org/
   ├─ @types/node@26.6.11
   │  ├─ URL: https://github.com/DefinitelyTyped/DefinitelyTyped.git
   │  └─ VendorUrl: https://github.com/DefinitelyTyped/DefinitelyTyped/tree/master/types/node
   ├─ bootswatch@5.3.8
   │  ├─ URL: git+https://github.com/thomaspark/bootswatch.git
   │  ├─ VendorName: Thomas Park
   │  └─ VendorUrl: https://bootswatch.com/
   ├─ chokidar@5.0.0
   │  ├─ URL: git+https://github.com/paulmillr/chokidar.git
   │  ├─ VendorName: Paul Miller
   │  └─ VendorUrl: https://github.com/paulmillr/chokidar
   ├─ esbuild@0.28.2
   │  └─ URL: git+https://github.com/evanw/esbuild.git
   ├─ immutable@5.2.1
   │  ├─ URL: git://github.com/immutable-js/immutable-js.git
   │  ├─ VendorName: Lee Byron
   │  └─ VendorUrl: https://immutable-js.com/
   ├─ is-extglob@2.1.1
   │  ├─ URL: https://github.com/jonschlinkert/is-extglob.git
   │  ├─ VendorName: Jon Schlinkert
   │  └─ VendorUrl: https://github.com/jonschlinkert/is-extglob
   ├─ is-glob@4.0.3
   │  ├─ URL: https://github.com/micromatch/is-glob.git
   │  ├─ VendorName: Jon Schlinkert
   │  └─ VendorUrl: https://github.com/micromatch/is-glob
   ├─ jquery-ujs@1.2.3
   │  ├─ URL: https://github.com/rails/jquery-ujs.git
   │  └─ VendorUrl: https://github.com/rails/jquery-ujs#readme
   ├─ jquery@4.1.0
   │  ├─ URL: git+https://github.com/jquery/jquery.git
   │  ├─ VendorName: OpenJS Foundation and other contributors
   │  └─ VendorUrl: https://jquery.com/
   ├─ node-addon-api@7.1.1
   │  ├─ URL: git://github.com/nodejs/node-addon-api.git
   │  └─ VendorUrl: https://github.com/nodejs/node-addon-api
   ├─ picomatch@4.0.7
   │  ├─ URL: https://github.com/micromatch/picomatch.git
   │  ├─ VendorName: Jon Schlinkert
   │  └─ VendorUrl: https://github.com/micromatch/picomatch
   ├─ pygments-rouge-css@0.1.0
   │  ├─ URL: git+https://github.com/zslucky/pygments-css.git
   │  ├─ VendorName: lucky zhou
   │  └─ VendorUrl: https://github.com/richleland/pygments-css#readme
   ├─ readdirp@5.1.1
   │  ├─ URL: https://github.com/paulmillr/readdirp.git
   │  ├─ VendorName: Thorsten Lorenz
   │  └─ VendorUrl: https://github.com/paulmillr/readdirp
   ├─ sass@1.108.2
   │  ├─ URL: https://github.com/sass/dart-sass
   │  ├─ VendorName: Natalie Weizenbaum
   │  └─ VendorUrl: https://github.com/sass/dart-sass
   └─ undici-types@8.9.0
      ├─ URL: git+https://github.com/nodejs/undici.git
      └─ VendorUrl: https://undici.nodejs.org/
Done in 0.26s.
```

#### パープルヘイズのルーティング

```markdown
 Prefix Verb   URI Pattern                                                                                       Controller#Action
                                                /assets                                                                                           Propshaft::Server
                       new_admin_session GET    /admins/sign_in(.:format)                                                                         admins/sessions#new
                           admin_session POST   /admins/sign_in(.:format)                                                                         admins/sessions#create
                   destroy_admin_session DELETE /admins/sign_out(.:format)                                                                        admins/sessions#destroy
                         admins_sign_out GET    /admins/sign_out(.:format)                                                                        devise/sessions#destroy
                        new_user_session GET    /users/sign_in(.:format)                                                                          users/sessions#new
                            user_session POST   /users/sign_in(.:format)                                                                          users/sessions#create
                    destroy_user_session DELETE /users/sign_out(.:format)                                                                         users/sessions#destroy
                          users_sign_out GET    /users/sign_out(.:format)                                                                         devise/sessions#destroy
                                    root GET    /                                                                                                 top#index
                               top_index GET    /top(.:format)                                                                                    top#index
                           blog_comments DELETE /blog_comments(.:format)                                                                          blog_comments#destroy
                                         POST   /blog_comments(.:format)                                                                          blog_comments#create
                                   users GET    /users(.:format)                                                                                  users#show
                                     top POST   /top(.:format)                                                                                    top#index
                              user_index GET    /user(.:format)                                                                                   user#index
                                    user DELETE /user/:id(.:format)                                                                               user#destroy
                            import_blogs POST   /blogs/import(.:format)                                                                           blogs#import
                                   blogs GET    /blogs(.:format)                                                                                  blogs#index
                                         POST   /blogs(.:format)                                                                                  blogs#create
                                new_blog GET    /blogs/new(.:format)                                                                              blogs#new
                               edit_blog GET    /blogs/:id/edit(.:format)                                                                         blogs#edit
                                    blog GET    /blogs/:id(.:format)                                                                              blogs#show
                                         PATCH  /blogs/:id(.:format)                                                                              blogs#update
                                         PUT    /blogs/:id(.:format)                                                                              blogs#update
                                         DELETE /blogs/:id(.:format)                                                                              blogs#destroy
                                 reblogs GET    /reblogs(.:format)                                                                                reblogs#index
                                comments GET    /comments(.:format)                                                                               comments#index
                                         POST   /comments(.:format)                                                                               comments#create
                             new_comment GET    /comments/new(.:format)                                                                           comments#new
                            edit_comment GET    /comments/:id/edit(.:format)                                                                      comments#edit
                                 comment GET    /comments/:id(.:format)                                                                           comments#show
                                         PATCH  /comments/:id(.:format)                                                                           comments#update
                                         PUT    /comments/:id(.:format)                                                                           comments#update
                                         DELETE /comments/:id(.:format)                                                                           comments#destroy
                            secret_index GET    /secret(.:format)                                                                                 secret#index
                             create_like POST   /like/:id(.:format)                                                                               likes#create
                            destroy_like DELETE /like/:id(.:format)                                                                               likes#destroy
                  two_step_verifications POST   /two_step_verifications(.:format)                                                                 two_step_verifications#create
               new_two_step_verification GET    /two_step_verifications/new(.:format)                                                             two_step_verifications#new
                                         GET    /*unmatched_route                                                                                 application#raise_not_found!
        turbo_recede_historical_location GET    /recede_historical_location(.:format)                                                             turbo/native/navigation#recede
        turbo_resume_historical_location GET    /resume_historical_location(.:format)                                                             turbo/native/navigation#resume
       turbo_refresh_historical_location GET    /refresh_historical_location(.:format)                                                            turbo/native/navigation#refresh
           rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                           action_mailbox/ingresses/postmark/inbound_emails#create
              rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                              action_mailbox/ingresses/relay/inbound_emails#create
           rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                           action_mailbox/ingresses/sendgrid/inbound_emails#create
     rails_mandrill_inbound_health_check GET    /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#health_check
           rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#create
            rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                                       action_mailbox/ingresses/mailgun/inbound_emails#create
          rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#index
                                         POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#create
       new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                                      rails/conductor/action_mailbox/inbound_emails#new
           rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#show
new_rails_conductor_inbound_email_source GET    /rails/conductor/action_mailbox/inbound_emails/sources/new(.:format)                              rails/conductor/action_mailbox/inbound_emails/sources#new
   rails_conductor_inbound_email_sources POST   /rails/conductor/action_mailbox/inbound_emails/sources(.:format)                                  rails/conductor/action_mailbox/inbound_emails/sources#create
   rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                               rails/conductor/action_mailbox/reroutes#create
rails_conductor_inbound_email_incinerate POST   /rails/conductor/action_mailbox/:inbound_email_id/incinerate(.:format)                            rails/conductor/action_mailbox/incinerates#create
                      rails_service_blob GET    /rails/active_storage/blobs/redirect/:signed_id/*filename(.:format)                               active_storage/blobs/redirect#show
                rails_service_blob_proxy GET    /rails/active_storage/blobs/proxy/:signed_id/*filename(.:format)                                  active_storage/blobs/proxy#show
                                         GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                                        active_storage/blobs/redirect#show
               rails_blob_representation GET    /rails/active_storage/representations/redirect/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations/redirect#show
         rails_blob_representation_proxy GET    /rails/active_storage/representations/proxy/:signed_blob_id/:variation_key/*filename(.:format)    active_storage/representations/proxy#show
                                         GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)          active_storage/representations/redirect#show
                      rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                                       active_storage/disk#show
               update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                               active_storage/disk#update
                    rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                                    active_storage/direct_uploads#create
```

_※ 更新履歴: 2026/11/27🔄_
