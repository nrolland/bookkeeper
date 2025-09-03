module Bookkeeper
  ( -- * Preamble

    -- | The examples here presume the following setup:
    --
    -- >>> import Data.Char (toUpper)
    -- >>> type Person = Book '[ "name" :=> String , "age" :=> Int ]
    -- >>> let julian :: Person = emptyBook & #age =: 28 & #name =: "Julian K. Arni"
    --
    -- The OverloadedLabels and TypeOperators extensions are also required.
    --
    -- A word of warning: The signatures for most of the functions are quite
    -- arcane, even though their behaviour is intuitive.

    -- * Initialization
    emptyBook,

    -- * Getters
    Gettable,
    (?:),
    get,

    -- * Setters
    Settable,
    set,
    (=:),

    -- * Modifying
    Modifiable,
    modify,
    (%:),

    -- * Deleting
    delete,

    -- * Types
    Book,
    (:=>),
    Key,

    -- * From Haskell record
    fromRecord,

    -- * Value level
    toValue,
    hasEntries,

    -- * Re-exports
    (&),
  )
where

import Bookkeeper.Internal
import Data.Function
