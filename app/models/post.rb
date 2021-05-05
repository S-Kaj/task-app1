class Post < ApplicationRecord
    validates :title, presence: true, length: { maximum: 10 }
    validates :start_day, presence: true
    validates :end_day, presence: true
    validates :memo, length: { maximum: 30 }

# 以下、日付に関するバリデーション
    validate :start_check
    validate :start_end_check

    # 開始日が過去の場合に弾く
    def start_check
        errors.add(:start_day, 'は今日以降の日付を指定してください！') if
        start_day.nil? || start_day < Date.today
    end

    # 終了日が開始日より早い場合に弾く
    def start_end_check
        errors.add(:end_day, 'は開始日以降の日付を指定してください！') unless
        start_day.nil? || end_day.nil? || self.start_day < self.end_day
    end
end
