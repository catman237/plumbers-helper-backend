class ToolsController < ApplicationController
    before_action :find_tool, only: [:show, :destroy]
    def index 
        @tools = Tool.all
        render json: @tools
    end

    def show 
        render json: @tool
    end

    def destroy 
        @tool.destroy
        render json: { message: "#{@tool.name} is deleted from the database."}
    end 
    
    def create 
        @newTool = Tool.create(tool_params)
        if @newTool.valid?
            render json: @newTool
        else
            render json: {message: "#{@newTool.name} wasnt created"}
        end
    end


    private

    def tool_params
        params.require(:tool).permit(:name, :brand, :use)
    end

    def find_tool
        @tool = Tool.find(params[:id])
    end

end
