class Api::V1::NotesController < ApplicationController
    def show
        @note = Note.find(params[:creature_id])
    end

    def index
        @notes = Note.find(params[:creature_id])
    end

    def create
        @creature = Creature.find(params[:creature_id])
        @note = @creature.notes.create(note_params)
        if @note.save
            render json: @note
        else
            render json: @note.errors, status: :unprocessable_entity
        end
    end


    def destroy
        @note = Note.find(params[:id])
        @note.destroy
        render json: @creature
    
    end

    private
    def note_params
        params.require(:note).permit(:creature_id, :content)
    end
end
