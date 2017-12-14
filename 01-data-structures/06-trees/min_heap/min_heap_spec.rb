include RSpec

require_relative 'min_heap'


RSpec.describe MinHeap, type: Class do
  let (:root) { Node.new("The Matrix", 87) }

  let (:tree) { MinHeap.new(root) }
  let (:pacific_rim) { Node.new("Pacific Rim", 72) }
  let (:braveheart) { Node.new("Braveheart", 78) }
  let (:jedi) { Node.new("Star Wars: Return of the Jedi", 80) }
  let (:donnie) { Node.new("Donnie Darko", 85) }
  let (:inception) { Node.new("Inception", 86) }
  let (:district) { Node.new("District 9", 90) }
  let (:shawshank) { Node.new("The Shawshank Redemption", 91) }
  let (:martian) { Node.new("The Martian", 92) }
  let (:hope) { Node.new("Star Wars: A New Hope", 93) }
  let (:empire) { Node.new("Star Wars: The Empire Strikes Back", 94) }
  let (:mad_max_2) { Node.new("Mad Max 2: The Road Warrior", 98) }

  describe "#insert" do
    it "properly inserts a new node as the root and inserts root back into tree" do
      tree.insert(root,pacific_rim)
      expect(tree.root.title).to eq "Pacific Rim"
    end

    it "properly inserts a new node as a left child if parent rating is lower" do
      tree.insert(root,district)
      expect(tree.root.left.title).to eq "District 9"
    end

    it "properly inserts a new node as a right child if parent and right child are smaller" do
      tree.insert(root, district)
      tree.insert(root, shawshank)
      expect(tree.root.right.title).to eq "The Shawshank Redemption"
    end
  end

  describe "#find" do
      it "properly finds a node" do
      tree.insert(root, district)
      tree.insert(root, shawshank)
      expect(tree.find(root, district)).to eq "District 9"
    end
  end

  describe "#delete" do
    it "handles nil gracefully" do
      expect(tree.delete(root, nil)).to eq nil
    end

    it "properly deletes a left node" do
      tree.insert(root, hope)
      tree.delete(root, hope.title)
      expect(tree.find(hope.title)).to be_nil
    end
  end

  describe "#print" do
    it "should print out the tree" do
       tree.insert(root, hope)
       tree.insert(root, empire)
       tree.insert(root, jedi)
       tree.insert(root, martian)
       tree.insert(root, pacific_rim)
       tree.insert(root, inception)
       tree.insert(root, braveheart)
       tree.insert(root, shawshank)
       tree.insert(root, district)
       tree.insert(root, mad_max_2)
       tree.print
    end
  end
end
