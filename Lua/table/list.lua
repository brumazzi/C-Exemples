list = {
	data = {}
}

function list:count()
	return table.maxn(self.data)
end

function list:get(index)
	return self.data[index+1]
end

function list:insert(index, value)
	table.insert(self.data, (index+1), value)
end

function count()
	return list:count()
end

function get(index)
	return list:get(index)
end

function insert(index, value)
	list:insert(index, value)
end
