class PicsController < ApplicationController

	before_filter :get_pic, :only => [:edit, :update, :show, :destroy]

	def get_pic
		@pic = Pic.find(params[:id])
	end

	def index
		@pics =  Pic.all

		respond_to do |format|
			format.html
			format.json {render json: @pics}
		end
	end

	def update
		if @pic.update_attributes(params[:pic])
			redirect_to @pic
		else
			redirect_to edit_pic_path(params[:id])
		end
	end

	def create
		@pic = Pic.new(params[:pic])
		if @pic.save
			redirect_to @pic
		else
			redirect_to new_pic_path, :flash => { :error => "#{@pic.errors[:title].join("")}" }
		end
	end

	def new
		@pic = Pic.new
	end

	def edit
	end

	def show
	end

	def destroy
		@pic.destroy
		redirect_to pics_path
	end

end
