class RenameProjectsIdToProjectId < ActiveRecord::Migration
  def change
  	rename_column :entries, :projects_id, :project_id
  end
end
