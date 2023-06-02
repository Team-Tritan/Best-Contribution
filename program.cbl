IDENTIFICATION DIVISION.
PROGRAM-ID. RANDOM-SUBTRACTION.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 Fixed-Number PIC 9(4) VALUE 1000.
01 Random-Number PIC 9(4).
01 Result PIC 9(4).
01 Message PIC X(50).

PROCEDURE DIVISION.
MAIN-LOGIC.
    CALL 'CBL_RANDOM' USING Random-Number.

    COMPUTE Result = Fixed-Number - Random-Number.

    MOVE "You have " TO Message.
    MOVE Result TO Message(10:4).
    MOVE " bitches." TO Message(15:4).

    DISPLAY Message.

    STOP RUN.
