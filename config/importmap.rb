# config/importmap.rb
pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "stimulus-loading", to: "stimulus-loading.js"
pin "rails-ujs", to: "https://cdn.jsdelivr.net/npm/@rails/ujs@7.2.2/dist/rails-ujs.js"
