class RemovePromptFromPromptsData < ActiveRecord::Migration
  def change
    remove_column :prompts_data, :prompt, :string
  end
end
