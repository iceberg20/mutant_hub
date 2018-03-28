module Api
	module V1
		class CitzensController < ApplicationController
			def index
				citzens = Citzen.order('created_at DESC');
				render json: {status: 'SUCCESS', message:'Citzens loaded!', data:citzens},status: :ok
			end

			def show
				citzen = Citzen.find(params[:id])
				render json: {status: 'SUCCESS', message:'Loaded citzen', data:citzen},status: :ok
			end

			def create
				citzen = Citzen.new(citzen_params)
				if citzen.save
					render json: {status: 'SUCCESS', message:'Saved citzen', data:citzen},status: :ok
				else
					render json: {status: 'ERROR', message:'citzen not saved', data:citzen.erros},status: :unprocessable_entity
				end
			end

			def destroy
				citzen = Citzen.find(params[:id])
				citzen.destroy
				render json: {status: 'SUCCESS', message:'Deleted citzen', data:citzen},status: :ok
			end

			def update
				citzen = Citzen.find(params[:id])
				if citzen.update_attributes(citzen_params)
					render json: {status: 'SUCCESS', message:'Updated citzen', data:citzen},status: :ok
				else
					render json: {status: 'ERROR', message:'citzens not update', data:citzen.erros},status: :unprocessable_entity
				end
			end

			private
			def citzen_params
				params.permit(:name, :age, :gender, :latitude, :longitude)
			end   
		end
	end
end