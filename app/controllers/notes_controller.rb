class NotesController < ApplicationController

 before_action :signed_in_user
 before_action :set_note, only: [:update, :a_destroy, :shared]


 def create
   @note = current_user.notes.build(params_note)
  if @note.save
    redirect_to note_account_url
  else
    redirect_to dashboard_url
  end
 end

 def update
  if @note.update(params_note)
    redirect_to note_account_url
  end
 end

 def shared
   @note.update team_id: current_user.team_id
 end

 def a_destroy
  @note.destroy
  respond_to do |format|
    format.html { redirect_to note_account_url}
    format.js
  end
 end

 def b_destroy
   @note = Note.find(params[:note_id])
   @memo = @note.memos.find(params[:id])
   @memo.destroy
   respond_to do |format|
     format.html {redirect_to note_account_url}
     format.js
   end
 end

 private

 def set_note
  @note = Note.find(params[:id])
 end

 def params_note
  params.require(:note).permit(:title, memos_attributes: [:id, :content, :_destroy])
 end

end
