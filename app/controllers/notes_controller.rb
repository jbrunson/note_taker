class NotesController < ApplicationController
  helper_method :notes, :note     #Make available in views
  
  def notes
    @_notes ||= Note.all
  end

  def note
    @_note ||= notes.find(params[:id])
  end
end
