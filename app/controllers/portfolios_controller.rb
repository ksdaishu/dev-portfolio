class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
	end

	def rubyonrails
		@portfolio_items = Portfolio.ruby_on_rails
	end

	def new
		@portfolio_items = Portfolio.new
	end

	def create
		@portfolio_items = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle , :body))

		respond_to do |format|
	      	if @portfolio_items.save
		        format.html { redirect_to portfolios_path, notice: 'portfolio was successfully created.' }
	      	else
		        format.html { render :new }
	      	end
		end
	end

	def edit
		@portfolio_items = Portfolio.find(params[:id])
	end

	def update
		@portfolio_items = Portfolio.find(params[:id])
		respond_to do |format|
	      	if @portfolio_items.update(params.require(:portfolio).permit(:title, :subtitle , :body))
		        format.html { redirect_to portfolios_path, notice: 'portfolio was successfully updated.' }
	      	else
		        format.html { render :edit }
	      	end
		end
	end

	def show
		@portfolio_items = Portfolio.find(params[:id])
	end

	def destroy
		@portfolio_items = Portfolio.find(params[:id])
		@portfolio_items.destroy
    	respond_to do |format|
	      format.html { redirect_to portfolios_url, notice: 'Item was successfully destroyed.' }
    	end
	end
end
