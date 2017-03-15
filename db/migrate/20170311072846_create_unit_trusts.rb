class CreateUnitTrusts < ActiveRecord::Migration[5.0]
  def change
    create_table :unit_trusts do |t|
      t.string :name
      t.string :fund_house
      t.string :sector
      t.string :assets
      t.decimal :risk_return_ratio
      t.decimal :sharpe_ratio
      t.date :date_invested
      t.decimal :amount_invested
      t.decimal :initial_nav
      t.decimal :inital_number_units
      t.date :date_sold
      t.decimal :nav_sold
      t.decimal :units_sold
      t.decimal :amount_received
      t.decimal :platform_fees
      t.decimal :wrap_fees
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
