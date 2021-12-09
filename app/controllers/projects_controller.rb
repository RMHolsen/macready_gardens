class ProjectsController < ApplicationController 
    before_action :set_project, only: [:show, :edit, :update, :destroy]

    # def index
    # end 
    # This may not be necessary given that any user will probably have their project index on their page
    # But that may become a separate page for the user so who knows

    def new 
        @project = Project.new 

    end 

    def create 
        @user = User.find(params[:user_id])
        @project = Project.new(project_params)
        # Find the user and instantiate the new item
        # May want to use this method instead
        # if params[:vet_id] && @vet = Vet.find(params[:vet_id]) meaning, if there is a params indicating a nested route and 
        # I can set that params equal to an instance
        #     @pet = @vet.pets.build 
        #     else 
        #     @pet = Pet.new
        #     end 
        if @project.valid?
            @project = @user.projects.build(project_params)
            @project.save 
            # Build the project and save the project if the project is filled in correctly
            redirect_to @user 
            # Double check that you want to direct to the user page instead of the project page
        else
            render :new
            # Or else do it all over again
        end 
    end 

    def show 
    end 

    def edit 
        @project = Project.find(params[:id])
        @user = User.find(params[:user_id])
        # Obv, find the details of each by params, and the user goes in there because it's nested
    end 

    def update
        @user = User.find(params[:user_id])
        if @project.update(project_params)
            # If the project is valid and updates properly
            redirect_to user_project_path(@user, @project)
            # Redirect to the project path, and remember it's nested under users, so it's /user_id/project_id and you need both user and project
        else 
            render :edit 
        end 
    end 

    def destroy 
    end 

    private 

    def project_params 
        params.require(:project).permit(:user_id, :name, :imgsrc, :sts_done, :percentage_done, :finished, :starte_date)
    end 

    def set_project 
        @project = Project.find(params[:id])
    end 

    def user_params 

    end 
end 