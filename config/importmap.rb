# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "flowbite", to: "https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.1.1/flowbite.turbo.min.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.8/lib/index.js"
pin "@hotwired/strada", to: "strada.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"

pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
