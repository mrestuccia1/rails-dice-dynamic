Rails.application.routes.draw do
  get('/', { :controller => "roll", :action => "home"})

  get('/:rolls/:sides', { :controller => "roll", :action => "execute"})
end
