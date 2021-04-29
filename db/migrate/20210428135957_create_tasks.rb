# frozen_string_literal: true

# Tasks of Board Table
class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.belongs_to :board, index: true

      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
