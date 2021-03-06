class PortfoliosController < ApplicationController
    def index
     @portfolio_items=Portfolio.all
    end

    def new
     @portfolio_item=Portfolio.new  
    end

    def create
        @portfolio_item=Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))
    
        respond_to do |format|
          if @portfolio_item.save
            format.html { redirect_to portfolios_path, notice: "your portfolio was successfully created." }
            
          else
            format.html { render :new, status: :unprocessable_entity }
            
          end
        end
    end

    def edit
        @portfolio_item = Portfolio.find(params[:id])
    end
    
    def update
        @portfolio_item = Portfolio.find(params[:id])

        @portfolio_item=Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))
    
        respond_to do |format|
          if @portfolio_item.save
            format.html { redirect_to portfolios_path, notice: "your portfolio was successfully updated." }
            
          else
            format.html { render :new, status: :unprocessable_entity }
            
          end
        end
    end

    def show
        @portfolio_item = Portfolio.find(params[:id])
    end 
    
    def destroy
      @portfolio_item =Portfolio.find(params[:id])

      @portfolio_item.destroy

     respond_to do |format|
      format.html { redirect_to portfolios_url, notice: "portfolio_item was successfully destroyed." }
    
     end

    end

end
