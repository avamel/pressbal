ActiveAdmin.register Info do

  index do
    column :info do |info|
      link_to info.address, admin_info_path(info)
      end
      default_actions
    end

    show title: "Info" do |info|
      attributes_table do
        row('Код оператора для первого номера: +375 29') {info.phone_cod1}
        row ('Первый номер без кода оператора: 651 32 12') {info.phone1}
        row ('Код оператора для второго номера: +375 29') {info.phone_cod2}
        row ('Второй номер без кода оператора: 651 32 12') {info.phone2}
        row ('Адрес') {info.address}
        row ('Ссылка на карту') {info.address_link}
      end
    end

  form html: {multipart: true} do |f|
    f.inputs do
      f.input :phone_cod1, label: 'Код оператора для первого номера телефона: +375 29'
      f.input :phone1, label: 'Первый номер телефона без кода оператора: 651 32 12'
      f.input :phone_cod2, label: 'Код оператора для второго номера телефона: +375 29'
      f.input :phone2, label: 'Второй номер телефона без кода оператора: 651 32 12'
      f.input :address, label: 'Адрес'
      f.input :address_link, label: 'Ссылка на карту'
      f.buttons
    end
  end

  controller do
    def resource_params
      return [] if request.get?
      [params.require(:info).permit(:phone1, :phone2, :phone_cod1, :phone_cod2, :address, :address_link)]
    end
  end
 end
