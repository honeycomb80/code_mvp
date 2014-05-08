class AddPromptToPromptsData < ActiveRecord::Migration
  def change
    add_column :prompts_data, :prompt_1, :string
    add_column :prompts_data, :prompt_2, :string
  end
end
