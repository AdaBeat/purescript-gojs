module GoJS.Model.UndoManager.Properties where

import GoJS.Collection (Iterator_, List_)
import GoJS.Model.Types (class IsModel, Transaction_, UndoManager_)
import GoJS.Unsafe (getUnsafe)

_currentTransaction :: UndoManager_ -> Transaction_
_currentTransaction = getUnsafe [ "currentTransaction" ]

_history :: UndoManager_ -> List_ Transaction_
_history = getUnsafe [ "history" ]

_historyIndex :: UndoManager_ -> Number
_historyIndex = getUnsafe [ "historyIndex" ]

_isEnabled :: UndoManager_ -> Boolean
_isEnabled = getUnsafe [ "isEnabled" ]

_isInTransaction :: UndoManager_ -> Boolean
_isInTransaction = getUnsafe [ "isInTransaction" ]

_isUndoingRedoing :: UndoManager_ -> Boolean
_isUndoingRedoing = getUnsafe [ "isUndoingRedoing" ]

_maxHistoryLength :: UndoManager_ -> Number
_maxHistoryLength = getUnsafe [ "maxHistoryLength" ]

-- TODO: Should this return an existential?
_models :: forall @m. IsModel m => UndoManager_ -> Iterator_ m
_models = getUnsafe [ "models" ]

_nestedTransactionNames :: UndoManager_ -> List_ String
_nestedTransactionNames = getUnsafe [ "nestedTransactionNames" ]

_transactionLevel :: UndoManager_ -> Number
_transactionLevel = getUnsafe [ "transactionLevel" ]

_transactionToRedo :: UndoManager_ -> Transaction_
_transactionToRedo = getUnsafe [ "transactionToRedo" ]

_transactionToUndo :: UndoManager_ -> Transaction_
_transactionToUndo = getUnsafe [ "transactionToUndo" ]
