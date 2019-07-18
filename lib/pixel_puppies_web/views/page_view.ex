defmodule PixelPuppiesWeb.PageView do
  use PixelPuppiesWeb, :view

  @pet_path "/images/pets/"
  @pets_directory "priv/static/images/pets"
  @file_ext [".jpg", "jpeg", ".png", "gif"]

  def all_pet_files do
    @pets_directory
    |> File.ls!()
    |> Enum.filter(&String.ends_with?(&1, @file_ext))
  end

  def pet_path(pic), do: @pet_path <> pic
end
