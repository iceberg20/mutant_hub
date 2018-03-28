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
		end
	end
end