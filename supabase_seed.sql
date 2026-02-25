-- ============================================================
-- TRUTH & DARE PICKER – DATABASE SCHEMA v4 (Pure Version)
-- High-speed, minimalist schema for the Neon Fate Wheel.
-- ============================================================

-- 1. Create Tables (Clean & Minimal)
DROP TABLE IF EXISTS cards;
CREATE TABLE cards (
  id          UUID        DEFAULT gen_random_uuid() PRIMARY KEY,
  type        TEXT        NOT NULL CHECK (type IN ('truth', 'dare')),
  text        TEXT        NOT NULL,
  created_at  TIMESTAMPTZ DEFAULT now()
);

-- 2. Performance Index
CREATE INDEX cards_type_idx ON cards(type);

-- 3. RLS Policies
ALTER TABLE cards ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Public Select" ON cards FOR SELECT USING (true);

-- 4. Pure Random Selection Function (RPC)
-- Optimized for speed and cleanliness.
CREATE OR REPLACE FUNCTION get_random_card(card_type TEXT)
RETURNS SETOF cards
LANGUAGE sql
SECURITY DEFINER
AS $$
  SELECT *
  FROM cards
  WHERE type = card_type
  ORDER BY random()
  LIMIT 1;
$$;

-- 5. PURE SEED DATA
INSERT INTO cards (type, text) VALUES
-- TRUTHS
('truth', 'What is your most embarrassing childhood memory?'),
('truth', 'Have you ever lied to get out of a date?'),
('truth', 'What is the biggest secret you have ever kept from your parents?'),
('truth', 'What is the most childish thing you still do?'),
('truth', 'Have you ever stalked an ex on social media?'),
('truth', 'What is one thing you would change about yourself if you could?'),
('truth', 'What is your biggest irrational fear?'),
('truth', 'Who was your first crush and why?'),
('truth', 'What is the most expensive thing you have ever broken?'),
('truth', 'Have you ever cheated on a test?'),
('truth', 'What is your most used emoji?'),
('truth', 'If you could live anywhere for a year, where would it be?'),

-- DARES
('dare', 'Do your best impression of a celebrity until someone guesses who it is.'),
('dare', 'Speak in a British accent for the next 3 rounds.'),
('dare', 'Post a random photo from your gallery to your story without context.'),
('dare', 'Send a random "I love you" text to the 5th person in your contacts.'),
('dare', 'Do 20 push-ups right now.'),
('dare', 'Try to lick your elbow (everyone knows it is impossible, but try!).'),
('dare', 'Let someone in the group post a status on your social media.'),
('dare', 'Call a random contact and sing "Happy Birthday" to them.'),
('dare', 'Do your best runway walk across the room.'),
('dare', 'Eat a spoonful of hot sauce or mustard.'),
('dare', 'Show the group the last 3 things you searched on your phone.'),
('dare', 'Do the chicken dance for 30 seconds.');
