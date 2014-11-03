class GroupsController < ApplicationController
	before_action :set_group, only: [:show, :edit, :update, :destroy]
	def show
		@group_membership = GroupMembership.find_by_group_id(params[:id])
	end

	def new
		@group = Group.new
	end

	def create
		@group = Group.new
		if @group.save
			@group.add current_user
			render "groups/#{@group.id}/edit"
		else
			render 'new'
		end
	end

	def edit
		@group_membership = GroupMembership.find_by_group_id(params[:id])
	end

	def update
		@group_membership = GroupMembership.find_by_group_id(params[:id])
		if @group_membership.update(group_params)
			redirect_to @group
		else
			render 'new'
		end
	end

	def index
		@groups = GroupMembership.all
	end

	private
	def set_group
		@group = Group.find(params[:id])
	end

	def group_params
		params.require(:group_membership).permit(:group_name)
	end
end
