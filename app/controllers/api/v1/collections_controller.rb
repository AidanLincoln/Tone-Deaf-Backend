class Api::V1::CollectionsController < ApplicationController
    skip_before_action :authorized, only: [:scales, :show]
    def index
        @collections = Collection.all 
        render json: @collections
    end

    def scales
        @scales = Collection.where(is_scale: true)
        render json: @scales
    end

    # def usersChords
    #     @chords = Collection.where(user_id: )
    # end

    def show
        @collection = Collection.find(params[:id])
        if @collection
            render json: {collection: @collection, notes: @collection.notes}
        else 
            render json: { error: 'That collection does not exist'}, status: :not_acceptable
        end
    end

    def create
        # puts collection_params
        # @collection = Collection.create(collection_params)
        # render json: {collection: CollectionSerializer.new(@collection) }
        puts params
        @collection = Collection.create("scale_name": params[:scale_name], "is_scale": params[:is_scale], "user_id": params[:user_id])
        if params.has_key?("notes")
            for note in params[:notes][:octave_one] do
                @thisNote = Note.find_by(name: note)
                @collection.notes << @thisNote
            end
            if params[:notes][:octave_two] 
                puts params[:notes][:octave_two]
                for note in params[:notes][:octave_two] do
                    @thisNote = Note.find_by(name: note)
                    @collection.notes << @thisNote
                end
            end
        end
        puts @collection
        render json: {collection: CollectionSerializer.new(@collection)} 
    end

    # def createChord
    #     @collection = Collection.create(collection_params)
    #     @collection.notes << 
    # end

    def edit
        @collection = Collection.find(params[:id])
        render json: @collection
    end

    def update
        @collection = Collection.find(params[:id])
        if @collection
            @collection.update(collection_params)
            render json: @collection
        else
            render json: { error: 'That collection does not exist'}, status: :not_acceptable
        end

    end

    def destroy
        @collection = Collection.find(params[:id])
        if @collection
            @collection.destroy
            render json: {message: 'Collection destroyed'}
        else
            render json: { error: 'That collection does not exist'}, status: :not_acceptable
        end
    end

    private
    def  collection_params
        params.require(:collection).permit(:id, :scale_name, :is_scale, :user_id, :notes, :created_at, :updated_at)
    end
end