class RelationshipController < ApplicationController
  def new
  end

  def create
    @relationship = current_user.relationships.build(friend_id: params[:friend_id])

     respond_to do |format|
       if @relationship.save
         format.html { redirect_to profile_path(current_user.id), notice: "User followed!"}
       else
         format.html {redirect_to root_path, error: "Unable to follow user" }
       end
     end
   end

  def update
  end

  def edit
  end

  def destroy
    @relationship = current_user.relationships.find(params[:id])
    @relationship.destroy
    respond_to do |format|
      format.html { redirect_to profile_path(current_user.id),  notice: "No longer following."}
    end
  end

  def show
  end

  def index
  end
end
