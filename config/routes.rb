Rails.application.routes.draw do
  get('/', { :controller => "roll", :action => "index"})

  get('/dice/:rolls/:sides', { :controller => "roll", :action => "execute"})
end
