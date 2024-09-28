# The routes for the Rails application are defined in this file. 
# Rails uses a Domain-Specific Language (DSL) to map incoming requests to controller actions.
# This file is central to how HTTP requests are routed to the appropriate parts of the application.
#
# Each route is tied to a specific URL pattern and a corresponding controller action that will handle that request.
# Routes define how various parts of the application are accessed via different HTTP methods like GET, POST, PATCH, and DELETE.
#
# @note Routes are configured using the Rails routing DSL, which provides powerful mechanisms for mapping URLs to controller actions.
# 
# @see https://guides.rubyonrails.org/routing.html Rails Routing Guide for more information.
Rails.application.routes.draw do
  
  # Defines the health check endpoint for the application.
  # This route maps the `/up` path to the `show` action in the `Rails::HealthController`.
  # 
  # @note This is a common convention in web applications to expose a lightweight endpoint that can be 
  # used to verify the operational status of the application. Uptime monitoring services and load balancers 
  # frequently use such endpoints to determine whether the application is healthy and capable of serving requests.
  #
  # The health check performs the following:
  # - Returns a **200 OK** status code if the application is running without issues.
  # - Returns a **500 Internal Server Error** status code if there are issues during application boot.
  #
  # @see https://guides.rubyonrails.org/routing.html#static-pages For more information on static routes.
  #
  # @example Defining a health check route:
  #   get "up" => "rails/health#show", as: :rails_health_check
  #
  # This maps the `/up` URL to the `Rails::HealthController#show` action, which checks the application’s health.
  # The route is named `rails_health_check`, so it can be referenced throughout the application, such as in views or controllers.
  #
  # @return [void]
  # @route GET /up
  get "up" => "rails/health#show", as: :rails_health_check
  
  # Defines the route to render the service worker for a Progressive Web Application (PWA).
  # This route maps the `/service-worker` path to the `service_worker` action in the `Rails::PWAController`.
  #
  # @note Progressive Web Apps (PWA) use service workers to handle background tasks, 
  # such as caching and handling network requests, to create a more reliable and offline-first experience.
  #
  # This route enables the service worker file to be dynamically rendered, which allows for more flexibility 
  # in how the service worker is configured and managed.
  #
  # @see https://web.dev/service-workers/ Service Workers: an Introduction
  #
  # @example Defining a PWA service worker route:
  #   get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  #
  # This maps the `/service-worker` URL to the `Rails::PWAController#service_worker` action, which is responsible 
  # for serving the service worker file used by the browser.
  #
  # @return [void]
  # @route GET /service-worker
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  
  # Defines the route to serve the PWA manifest file.
  # This route maps the `/manifest` path to the `manifest` action in the `Rails::PWAController`.
  #
  # @note The manifest is a key part of a PWA, as it provides metadata such as the application’s name, 
  # icons, and theme colors. This file helps the browser display the web app like a native app 
  # when added to the home screen.
  #
  # @see https://web.dev/add-manifest/ Adding a Web App Manifest
  #
  # @example Defining a PWA manifest route:
  #   get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  #
  # This maps the `/manifest` URL to the `Rails::PWAController#manifest` action, which is responsible 
  # for dynamically rendering the web app's manifest file.
  #
  # @return [void]
  # @route GET /manifest
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root route of the application.
  # This route maps the root URL (`/`) of the application to the `hello` action in the `ApplicationController`.
  #
  # @note The root route is the default route that users land on when they visit the base URL of the application (e.g., https://your-app.com/).
  # It typically renders the homepage or a key page that users first interact with.
  #
  # In this example, the root route renders the "hello, world!" message defined in the `ApplicationController#hello` action.
  #
  # @see https://guides.rubyonrails.org/routing.html#the-root-route For more information on root routes.
  #
  # @example Defining the root route:
  #   root "application#hello"
  #
  # This maps the root URL (`/`) to the `ApplicationController#hello` action, which renders the homepage.
  #
  # @return [void]
  # @route GET /
  root "application#hello"

end
