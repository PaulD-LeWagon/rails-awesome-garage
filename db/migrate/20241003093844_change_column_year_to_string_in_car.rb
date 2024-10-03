class ChangeColumnYearToStringInCar < ActiveRecord::Migration[7.1]
  def change
    change_column :cars, :year, :string
  end
end
