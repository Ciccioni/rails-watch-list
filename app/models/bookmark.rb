class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: {minimum: 6}
  validates :movie, uniqueness: { scope: :list}
  # tengo que validar que la movie es unica en la lista.
  # esto lo hago atraves de "bookmark"
  # valido que :movie, es unica: {en la lista}
end
