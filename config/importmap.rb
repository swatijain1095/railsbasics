# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "trix"
pin "@rails/actiontext", to: "@rails--actiontext.js" # @8.0.0
pin "@rails/actiontext", to: "actiontext.esm.js"
