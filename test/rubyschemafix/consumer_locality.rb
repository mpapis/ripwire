# consumer arm, locality-resolved: the call site sits inside PairDefColumn, whose own
# `def name` is in the same file — the resolver's locality tier pins THAT def, so the
# row is amb=0, not split over the columns and yaml key.
module Spike
  class PairDefColumnConsumer < ApplicationRecord
    self.table_name = "spike_pair_def_columns"

    def current_name
      name
    end
  end
end