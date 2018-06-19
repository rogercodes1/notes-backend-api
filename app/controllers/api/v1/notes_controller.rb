class Api::V1::NotesController < ApplicationController

    def index
      #code
      @notes = Note.all
      render json:@notes, include: :notes
    end
    def create
        @note = Note.new(get_params)
        @note.save

    end
    
    def show
        @note = Note.find(params[:id])

    end

    private

    def get_params
        params.require(:note).permit(:message)
    end

end
