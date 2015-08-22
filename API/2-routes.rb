Rails.application.routes.draw do
  resources(:users, :except => [ :new, :edit ]) do
    resources(:tasks, :only => [ :index, :create, :destroy, :show ])
  end
    patch "/users/:user_id/tasks/:id/complete" => "tasks#complete"
  
end
