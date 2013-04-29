require 'spec_helper'
require './lib/scroller'

describe Scroller do

  let(:scroller) { Scroller.new([:a, :b]) }

  describe '.new' do
    context 'given nothing' do

      let(:scroller) { Scroller.new }

      it 'contains no items' do
        scroller.items.should be_empty
      end
    end

    context 'given items' do
      it 'contains items' do
        scroller.items.include?(:a).should be_true
        scroller.items.include?(:b).should be_true
      end
    end
  end

  describe '#next' do

    context "given the position isn't last in items" do
      it 'returns the next item' do
        scroller.next.should eq :b
      end
    end

    context 'given the position is last item in items' do

      before { scroller.next }

      it 'returns the first item' do
        scroller.next.should eq :a
      end
    end
  end

  describe '#current' do
    it "returns the current item" do
      scroller.current.should eq :a
    end
  end

  describe '#<<' do
    it "adds new item" do
      scroller << :c
      scroller.items.include?(:c).should be_true
    end
  end

end
