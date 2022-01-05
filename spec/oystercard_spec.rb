# frozen_string_literal: true

require 'oystercard'

 describe OysterCard do
  

   it 'it responds to balance' do
    expect(subject).to respond_to(:balance)
   end

   it 'should show a zero balance initially' do
    expect(subject.balance).to eq(0)
   end

   it 'should topup money into the OyesterCard' do
     expect(subject).to respond_to(:top_up).with(1).argument
   end

  #  it 'raise error when MAX_BALANCE is reached' do
  #    oystercard = OysterCard.new
  #    oystercard.balance = 90
  #    expect {oystercard.top_up(1) }.to raise_error "Maximum balance allowed #{MAX_BALANCE}"
  #  end

   it 'should update balance when topup is done' do
     subject.top_up(10)
     expect(subject.balance).to eq(10)
   end

   it 'inizialy should not be in journey' do
    expect(subject).not_to be_in_journey
   end
   
   it 'response to touch_in' do
    subject.touch_in
    expect(subject).to be_in_journey
   end 
   it 'response to touch_out' do
    subject.touch_in
    subject.touch_out
    expect(subject).not_to be_in_journey
   end 

  end

