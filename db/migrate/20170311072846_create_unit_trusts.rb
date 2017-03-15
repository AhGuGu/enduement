class CreateUnitTrusts < ActiveRecord::Migration[5.0]
  def change
    create_table :unit_trusts do |t|
      t.string :name
      t.string :fund_house
      t.string :sector
      t.string :assets
      t.decimal :last_five_years_return
      t.decimal :last_three_years_return
      t.decimal :last_one_year_return
      t.date :date_invested
      t.decimal :amount_invested
      t.decimal :initial_nav
      t.decimal :initial_number_units
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
