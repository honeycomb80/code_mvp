class CreatePromptsData < ActiveRecord::Migration
  def change
    create_table :prompts_data do |t|
      t.string :prompt
      t.string :answer

      t.timestamps
    end
  end
end
