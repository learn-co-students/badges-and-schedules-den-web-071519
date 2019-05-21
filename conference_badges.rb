def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(names)
    attendees = []
    names.each do |name|
        attendee = badge_maker(name)
        attendees.push(attendee)
    end
    return attendees
end

def assign_rooms(speakers)
    rooms = 1
    welcome_messages = []
    speakers.each do |speaker|
        assignment = "Hello, #{speaker}! You'll be assigned to room #{rooms}!"
        welcome_messages.push(assignment)
        rooms += 1
    end
    return welcome_messages
end

def printer(attendees)
    group1 = batch_badge_creator(attendees)
    group2 = assign_rooms(attendees)
    group1.each do |attendee|
        puts attendee
    end
    group2.each do |speaker|
        puts speaker
    end
end
