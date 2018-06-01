class Api::V1::NotesController < ApplicationController
    def show
        @note = Note.find(params[:id])
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

    def update
        @note = Note.find(params[:id])
        if @note.save
            redirect_to creature_path(@note.creature_id)
        else
            render 'new'
        end
    end

    def destroy
        @note = Note.find(params[:id])
        @id = @note.creature_id
        
        @note.destroy
        redirect_to creature_path(@id)
    
    end

    private
    def note_params
        params.require(:note).permit(:creature_id, :content)
    end
end
