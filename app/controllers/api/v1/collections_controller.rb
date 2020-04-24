class Api::V1::CollectionsController < ApplicationController

    def index
        @collections = Collection.all 
        render json: @collections
    end

    def show
        @collection = Collection.find(params[:id])
        if @collection
            render json: @collection
        else 
            render json: { error: 'That collection does not exist'}, status: :not_acceptable
        end
    end

    def create
        @collection = Collection.create(collection_params)
        render json: {collection: CollectionSerializer.new(@collection) }
    end

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
        params.require(:collection).permit(:id, :scale_name, :is_scale, :user_id, :created_at, :updated_at)
    end
end
