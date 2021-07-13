class JobsController < ApplicationController
    before_action :find_job, only: [:show, :destroy]

    def index
        @jobs = Job.all
        render json: @jobs
    end

    def show
        render json: @job
    end

    def destroy
        @job.destroy
        render json: { message: "#{@job.name} is deleted from your job log"}
    end

    def create
        @newJob = Job.create(job_params)
        if @newJob.valid?
            render json: @newJob
        else
            render json: { message: "this is not a vaild job ticket"}
        end
    end

    private

    def find_job
        @job = Job.find(params[:id])
    end 

    def job_params
        params.require(:job).permit(:name, :price, :description, :done)
    end 

end
