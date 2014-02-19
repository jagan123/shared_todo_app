class TodosController < ApplicationController
  def index
  
  	@todo_items = Todo.all
	@new_todo = Todo.new

  end

  def add
    todo = Todo.create(:todo_item => params[:todo][:todo_item])
    redirect_to :action => 'index'
  end

  def delete
  	t = Todo.last
  	t.delete
  	redirect_to :action => 'index'
  end

end
