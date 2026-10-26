.class public Lorg/jaudiotagger/tag/id3/ID3v23Tag;
.super Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;
.source "ID3v23Tag.java"


# static fields
.field protected static FIELD_TAG_EXT_SIZE_LENGTH:I = 0x4

.field public static final MAJOR_VERSION:B = 0x3t

.field public static final MASK_V23_CRC_DATA_PRESENT:I = 0x80

.field public static final MASK_V23_EMBEDDED_INFO_FLAG:I = 0x2

.field public static final MASK_V23_EXPERIMENTAL:I = 0x20

.field public static final MASK_V23_EXTENDED_HEADER:I = 0x40

.field public static final MASK_V23_UNSYNCHRONIZATION:I = 0x80

.field public static final RELEASE:B = 0x2t

.field public static final REVISION:B = 0x0t

.field protected static TAG_EXT_HEADER_CRC_LENGTH:I = 0x4

.field protected static TAG_EXT_HEADER_DATA_LENGTH:I = 0x0

.field protected static TAG_EXT_HEADER_LENGTH:I = 0xa

.field protected static final TYPE_CRCDATA:Ljava/lang/String; = "crcdata"

.field protected static final TYPE_EXPERIMENTAL:Ljava/lang/String; = "experimental"

.field protected static final TYPE_EXTENDED:Ljava/lang/String; = "extended"

.field protected static final TYPE_PADDINGSIZE:Ljava/lang/String; = "paddingsize"

.field protected static final TYPE_UNSYNCHRONISATION:Ljava/lang/String; = "unsyncronisation"


# instance fields
.field protected compression:Z

.field private crc32:I

.field protected crcDataFlag:Z

.field protected experimental:Z

.field protected extended:Z

.field private paddingSize:I

.field protected unsynchronization:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    rsub-int/lit8 v0, v0, 0xa

    .line 58
    sput v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 163
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 93
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 98
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 108
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 113
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 118
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->compression:Z

    .line 164
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->frameMap:Ljava/util/Map;

    .line 165
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->encryptedFrameMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/TagException;
        }
    .end annotation

    .line 374
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/TagException;
        }
    .end annotation

    .line 359
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 93
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 98
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 108
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 113
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 118
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->compression:Z

    .line 360
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .locals 2

    .line 320
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 93
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 98
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 108
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 113
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 118
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->compression:Z

    .line 321
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from a tag of a different version"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->frameMap:Ljava/util/Map;

    .line 323
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->encryptedFrameMap:Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 329
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    if-nez v0, :cond_1

    .line 333
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_0

    .line 335
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    goto :goto_0

    .line 340
    :cond_0
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    move-object p1, v0

    .line 342
    :goto_0
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 346
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->copyFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 347
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    const-string v0, "Created tag from a tag of a different version"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto :goto_1

    .line 331
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v23Tag;)V
    .locals 2

    .line 308
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 93
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 98
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 108
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 113
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 118
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->compression:Z

    .line 309
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from another tag of same type"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 311
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->copyFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    return-void
.end method

.method private putAsList(Ljava/util/Map;Ljava/lang/String;Lorg/jaudiotagger/tag/TagField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;>;",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/tag/TagField;",
            ")V"
        }
    .end annotation

    .line 1309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1310
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1311
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private readExtendedHeader(Ljava/nio/ByteBuffer;I)V
    .locals 4

    .line 508
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    .line 510
    sget v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_2

    .line 513
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 514
    :goto_0
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eqz v1, :cond_1

    .line 517
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_CRC_FLAG_SET_INCORRECTLY:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 520
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 523
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    if-lez p1, :cond_7

    .line 526
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_PADDING_SIZE:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 530
    :cond_2
    sget v3, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v0, v3

    if-ne p2, v0, :cond_6

    .line 532
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_CRC:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 536
    :goto_1
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-nez v1, :cond_4

    .line 539
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_CRC_FLAG_SET_INCORRECTLY:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 542
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 544
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    if-lez p2, :cond_5

    .line 547
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_PADDING_SIZE:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 551
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    .line 552
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_CRC_SIZE:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto :goto_2

    .line 558
    :cond_6
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_EXTENDED_HEADER_SIZE_INVALID:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    sget v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->FIELD_TAG_EXT_SIZE_LENGTH:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_7
    :goto_2
    return-void
.end method

.method private readHeaderFlags(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/TagException;
        }
    .end annotation

    .line 452
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 v0, p1, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 453
    :goto_0
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 454
    :goto_1
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_2

    move v1, v2

    .line 455
    :cond_2
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3

    .line 460
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_3
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    .line 465
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_4
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_5

    .line 470
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_5
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_6

    .line 475
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_6
    and-int/2addr p1, v2

    if-eqz p1, :cond_7

    .line 480
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 483
    :cond_7
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 485
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_UNSYNCHRONIZED:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 488
    :cond_8
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    if-eqz p1, :cond_9

    .line 490
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_EXTENDED:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 493
    :cond_9
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    if-eqz p1, :cond_a

    .line 495
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_EXPERIMENTAL:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 692
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 693
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 694
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 697
    sget v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    add-int/lit8 v1, v1, 0xa

    sget v2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v1, v2

    .line 698
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 701
    sget-object v2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_ID:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 704
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getMajorVersion()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 707
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getRevision()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 711
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v2

    const/16 v3, 0x80

    if-eqz v2, :cond_0

    int-to-byte v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    .line 715
    :goto_0
    iget-boolean v4, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    if-eqz v4, :cond_1

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    .line 719
    :cond_1
    iget-boolean v4, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    if-eqz v4, :cond_2

    or-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    .line 723
    :cond_2
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 727
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    if-eqz v2, :cond_3

    .line 729
    sget v2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    .line 730
    iget-boolean v4, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eqz v4, :cond_4

    .line 732
    sget v4, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v2, v4

    goto :goto_1

    :cond_3
    move v2, v0

    :cond_4
    :goto_1
    add-int/2addr p2, p1

    add-int/2addr p2, v2

    .line 737
    invoke-static {p2}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->valueToBuffer(I)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 740
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    if-eqz p2, :cond_6

    .line 746
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eqz p2, :cond_5

    .line 748
    sget p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    sget p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-byte p1, v3

    .line 750
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 751
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 752
    iget p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 753
    iget p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 758
    :cond_5
    sget p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 759
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 760
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 762
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 766
    :cond_6
    :goto_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v1
.end method


# virtual methods
.method public addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 4

    .line 227
    :try_start_0
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->copyFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    goto :goto_1

    .line 233
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->convertFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)Ljava/util/List;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 236
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->copyFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/InvalidFrameException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to convert frame:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method protected combineFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;)V"
        }
    .end annotation

    .line 197
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    .line 198
    instance-of v3, v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-eqz v3, :cond_0

    .line 199
    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 200
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IPLS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 209
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object p2

    .line 210
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 213
    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Lorg/jaudiotagger/tag/datatype/Pair;)V

    goto :goto_1

    .line 218
    :cond_2
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method protected convertFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/InvalidFrameException;
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TDRC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    if-eqz v1, :cond_2

    .line 253
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    .line 254
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->findMatchingMaskAndExtractV3Values()V

    .line 256
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    const-string v3, "TYER"

    invoke-direct {v1, v3}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTYER;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTYER;->setText(Ljava/lang/String;)V

    .line 260
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    const-string v3, "TDAT"

    invoke-direct {v1, v3}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;->setText(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->isMonthOnly()Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;->setMonthOnly(Z)V

    .line 267
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_1
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 271
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    const-string v2, "TIME"

    invoke-direct {v1, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIME;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIME;->setText(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIME;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->isHoursOnly()Z

    move-result p1

    invoke-virtual {v2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIME;->setHoursOnly(Z)V

    .line 274
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 278
    :cond_2
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TIPL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "IPLS"

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    if-eqz v1, :cond_3

    .line 280
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v1

    .line 281
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-object v4, p1

    check-cast v4, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    invoke-direct {v3, v4, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;Ljava/lang/String;)V

    .line 282
    new-instance v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result p1

    invoke-direct {v2, p1, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;-><init>(BLjava/util/List;)V

    .line 283
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 284
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_3
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TMCL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMCL;

    if-eqz v1, :cond_4

    .line 288
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMCL;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMCL;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v1

    .line 289
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-object v4, p1

    check-cast v4, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    invoke-direct {v3, v4, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;Ljava/lang/String;)V

    .line 290
    new-instance v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result p1

    invoke-direct {v2, p1, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;-><init>(BLjava/util/List;)V

    .line 291
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 292
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_4
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    invoke-direct {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    return-object v0
.end method

.method protected copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 2

    .line 173
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Copying primitives"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 174
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 176
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    if-eqz v0, :cond_0

    .line 178
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    .line 179
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 180
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 181
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 182
    iget v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    .line 183
    iget p1, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    iput p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    :cond_0
    return-void
.end method

.method public createArtworkField([BLjava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 3

    .line 1049
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 1052
    const-string v2, "PictureData"

    invoke-virtual {v1, v2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1053
    const-string p1, "PictureType"

    sget-object v2, Lorg/jaudiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1054
    const-string p1, "MIMEType"

    invoke-virtual {v1, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1055
    const-string p1, "Description"

    const-string p2, ""

    invoke-virtual {v1, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public varargs createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;,
            Lorg/jaudiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p1, :cond_c

    if-eqz p2, :cond_b

    const/4 v0, 0x0

    .line 1081
    aget-object v1, p2, v0

    if-eqz v1, :cond_b

    .line 1087
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_2

    if-eqz v1, :cond_1

    .line 1093
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object p1

    .line 1094
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object p1

    .line 1095
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;

    .line 1096
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->setV23Format()V

    .line 1098
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp3GenresAsText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1100
    invoke-virtual {p2, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 1104
    :cond_0
    invoke-static {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->convertGenericToID3v23Genre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->setText(Ljava/lang/String;)V

    :goto_0
    return-object p1

    .line 1091
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1108
    :cond_2
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_a

    .line 1110
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    const-string v2, "TYER"

    if-ne p1, p2, :cond_3

    .line 1112
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object p1

    .line 1113
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "000"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    return-object p1

    .line 1116
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 1118
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object p1

    .line 1119
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "00"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    return-object p1

    .line 1122
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 1124
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object p1

    .line 1125
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    return-object p1

    .line 1128
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    .line 1130
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object p1

    .line 1131
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    invoke-virtual {p2, v1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    return-object p1

    .line 1134
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, p2, :cond_9

    .line 1136
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object p1

    .line 1137
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    invoke-virtual {v1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "TDAT"

    const/4 v2, 0x5

    const/16 v3, 0xa

    const/4 v4, 0x7

    if-lt p2, v3, :cond_7

    .line 1142
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x8

    .line 1143
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1144
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object v0

    .line 1145
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 1147
    new-instance p2, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;

    invoke-direct {p2}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;-><init>()V

    .line 1148
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 1149
    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    return-object p2

    .line 1152
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-lt p2, v4, :cond_8

    .line 1156
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1158
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object v0

    .line 1159
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "01"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 1161
    new-instance p2, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;

    invoke-direct {p2}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;-><init>()V

    .line 1162
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 1163
    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    return-object p2

    :cond_8
    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1

    .line 1179
    :cond_a
    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 1083
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1078
    :cond_c
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public createField(Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;,
            Lorg/jaudiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 897
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    invoke-super {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doCreateTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 895
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    .line 1012
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object v0

    .line 1013
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 1014
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->isLinked()Z

    move-result v2

    const-string v3, "Description"

    const-string v4, "MIMEType"

    const-string v5, "PictureType"

    const-string v6, "PictureData"

    if-nez v2, :cond_0

    .line 1016
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getBinaryData()[B

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1017
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getPictureType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1018
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1019
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 1026
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    const-string v7, "ISO-8859-1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getPictureType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1033
    const-string v2, "-->"

    invoke-virtual {v1, v4, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1034
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 1030
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object p1

    return-object p1
.end method

.method public createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;
    .locals 1

    .line 875
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createStructure()V
    .locals 5

    .line 848
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-super {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructureHeader()V

    .line 853
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, ""

    const-string v3, "header"

    invoke-virtual {v0, v3, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "unsyncronisation"

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 855
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "extended"

    iget-boolean v4, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    invoke-virtual {v0, v1, v4}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 856
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "experimental"

    iget-boolean v4, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    invoke-virtual {v0, v1, v4}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 857
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "crcdata"

    iget v4, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    invoke-virtual {v0, v1, v4}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 858
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "paddingsize"

    iget v4, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    invoke-virtual {v0, v1, v4}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 859
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 861
    invoke-super {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructureBody()V

    .line 862
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 2

    .line 947
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V

    return-void
.end method

.method public deleteField(Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 938
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V

    return-void

    .line 936
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 416
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 420
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    .line 421
    iget v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    iget v3, v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    if-eq v2, v3, :cond_1

    return v1

    .line 425
    :cond_1
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    iget-boolean v3, v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 429
    :cond_2
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    iget-boolean v3, v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 433
    :cond_3
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    iget-boolean v3, v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 437
    :cond_4
    iget v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    iget v0, v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    if-ne v2, v0, :cond_5

    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public getAll(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    .line 1325
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_1

    .line 1327
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    .line 1328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 1329
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 1331
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 1332
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;

    .line 1334
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1336
    invoke-static {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->convertID3v23GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    .line 1341
    :cond_1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_4

    .line 1343
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    .line 1344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 1345
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1347
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/TagField;

    .line 1349
    instance-of v2, v1, Lorg/jaudiotagger/tag/TagTextField;

    if-eqz v2, :cond_2

    .line 1351
    check-cast v1, Lorg/jaudiotagger/tag/TagTextField;

    invoke-interface {v1}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0

    .line 1359
    :cond_4
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getAll(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/images/Artwork;",
            ">;"
        }
    .end annotation

    .line 983
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 984
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 986
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    .line 988
    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 989
    invoke-static {}, Lorg/jaudiotagger/tag/images/ArtworkFactory;->getNew()Lorg/jaudiotagger/tag/images/Artwork;

    move-result-object v3

    .line 990
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jaudiotagger/tag/images/Artwork;->setMimeType(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getPictureType()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/jaudiotagger/tag/images/Artwork;->setPictureType(I)V

    .line 992
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jaudiotagger/tag/images/Artwork;->setDescription(Ljava/lang/String;)V

    .line 993
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->isImageUrl()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 995
    invoke-interface {v3, v4}, Lorg/jaudiotagger/tag/images/Artwork;->setLinked(Z)V

    .line 996
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/jaudiotagger/tag/images/Artwork;->setImageUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 1000
    :cond_0
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getImageData()[B

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/jaudiotagger/tag/images/Artwork;->setBinaryData([B)V

    .line 1002
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getCrc32()I
    .locals 1

    .line 156
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    return v0
.end method

.method public getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1378
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_2

    .line 1380
    const-string v0, "TYERTDAT"

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFrame(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1381
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/id3/AggregatedFrame;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1384
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1385
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 1390
    :cond_1
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1395
    :cond_2
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1375
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 914
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v23Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getGenericKeyFromId3(Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;)Lorg/jaudiotagger/tag/FieldKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 917
    invoke-super {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 921
    :cond_0
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 922
    invoke-super {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doGetValueAtIndex(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 911
    :cond_1
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method protected getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;
    .locals 3

    if-eqz p1, :cond_1

    .line 956
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v23Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getId3KeyFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 961
    new-instance v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, p1, v2, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 959
    :cond_0
    new-instance v0, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 954
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getID3Frames()Lorg/jaudiotagger/tag/id3/ID3Frames;
    .locals 1

    .line 966
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v23Frames;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 382
    const-string v0, "ID3v2.30"

    return-object v0
.end method

.method public getMajorVersion()B
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getPaddingSize()I
    .locals 1

    .line 1061
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    return v0
.end method

.method public getPreferredFrameOrderComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 975
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->getInstanceof()Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;

    move-result-object v0

    return-object v0
.end method

.method public getRelease()B
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getRevision()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSize()I
    .locals 2

    .line 396
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    .line 398
    sget v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    add-int/2addr v1, v0

    .line 399
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eqz v0, :cond_0

    .line 401
    sget v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v1, v0

    .line 404
    :cond_0
    invoke-super {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getSize()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1198
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 1200
    const-string v0, "TYERTDAT"

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFrame(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1201
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/id3/AggregatedFrame;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1204
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AggregatedFrame;->getContent()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1208
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1211
    :cond_2
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_4

    .line 1213
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1214
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1216
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 1217
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;

    .line 1218
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->convertID3v23GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1220
    :cond_3
    const-string p1, ""

    return-object p1

    .line 1224
    :cond_4
    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1195
    :cond_5
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public isUnsynchronization()Z
    .locals 1

    .line 870
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    return v0
.end method

.method protected loadFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 1

    .line 1230
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;

    if-eqz v0, :cond_0

    .line 1232
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->setV23Format()V

    .line 1234
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->loadFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    return-void
.end method

.method protected loadFrameIntoSpecifiedMap(Ljava/util/Map;Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;>;",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            ")V"
        }
    .end annotation

    .line 1239
    const-string v0, "TYER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "TDAT"

    if-nez v1, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1241
    invoke-super {p0, p1, p2, p3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->loadFrameIntoSpecifiedMap(Ljava/util/Map;Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    return-void

    .line 1245
    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1247
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1250
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ":TDAT is empty so just ignoring"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 1254
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "TYERTDAT"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_2

    .line 1264
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1266
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1268
    new-instance p2, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;

    invoke-direct {p2}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;-><init>()V

    .line 1269
    invoke-virtual {p2, p3}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 1270
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/TagField;

    .line 1272
    instance-of v3, v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-eqz v3, :cond_3

    .line 1274
    check-cast v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    goto :goto_0

    .line 1277
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    invoke-direct {p0, p1, v1, p2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->putAsList(Ljava/util/Map;Ljava/lang/String;Lorg/jaudiotagger/tag/TagField;)V

    goto/16 :goto_3

    .line 1282
    :cond_5
    invoke-direct {p0, p1, v0, p3}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->putAsList(Ljava/util/Map;Ljava/lang/String;Lorg/jaudiotagger/tag/TagField;)V

    goto/16 :goto_3

    .line 1285
    :cond_6
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1287
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1289
    new-instance p2, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;

    invoke-direct {p2}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;-><init>()V

    .line 1290
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/TagField;

    .line 1292
    instance-of v4, v3, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-eqz v4, :cond_7

    .line 1294
    check-cast v3, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {p2, v3}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    goto :goto_1

    .line 1297
    :cond_8
    invoke-virtual {p2, p3}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 1298
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    invoke-direct {p0, p1, v1, p2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->putAsList(Ljava/util/Map;Ljava/lang/String;Lorg/jaudiotagger/tag/TagField;)V

    goto :goto_3

    .line 1303
    :cond_9
    invoke-direct {p0, p1, v2, p3}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->putAsList(Ljava/util/Map;Ljava/lang/String;Lorg/jaudiotagger/tag/TagField;)V

    goto :goto_3

    .line 1257
    :cond_a
    :goto_2
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->duplicateFrameId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_b

    .line 1259
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->duplicateFrameId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->duplicateFrameId:Ljava/lang/String;

    .line 1261
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->duplicateFrameId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->duplicateFrameId:Ljava/lang/String;

    .line 1262
    iget p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->duplicateBytes:I

    invoke-virtual {p3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getSize()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->duplicateBytes:I

    :cond_c
    :goto_3
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/TagException;
        }
    .end annotation

    .line 570
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Reading ID3v23 tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 576
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->readHeaderFlags(Ljava/nio/ByteBuffer;)V

    .line 579
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 580
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->ID_TAG_SIZE:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 583
    iget-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    if-eqz v1, :cond_0

    .line 585
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->readExtendedHeader(Ljava/nio/ByteBuffer;I)V

    .line 589
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 591
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 593
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->synchronize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 596
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->readFrames(Ljava/nio/ByteBuffer;I)V

    .line 597
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Loaded Frames,there are:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->frameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void

    .line 572
    :cond_2
    new-instance p1, Lorg/jaudiotagger/tag/TagNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tag not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected readFrames(Ljava/nio/ByteBuffer;I)V
    .locals 6

    .line 614
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->frameMap:Ljava/util/Map;

    .line 615
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->encryptedFrameMap:Ljava/util/Map;

    .line 619
    iput p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->fileReadSize:I

    .line 620
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Start of frame body at:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",frames data size is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 624
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 630
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 631
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":Looking for next frame at:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 632
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 633
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 634
    sget-object v3, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at frame at:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0, v2, v1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->loadFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/PaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/jaudiotagger/tag/EmptyFrameException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/jaudiotagger/tag/InvalidFrameIdentifierException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jaudiotagger/tag/InvalidFrameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jaudiotagger/tag/InvalidDataTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 669
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":Corrupt Frame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/InvalidDataTypeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 670
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->invalidFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->invalidFrames:I

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 660
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Invalid Frame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/InvalidFrameException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 661
    iget p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->invalidFrames:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->invalidFrames:I

    goto/16 :goto_1

    :catch_2
    move-exception p1

    .line 651
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Invalid Frame Identifier:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/InvalidFrameIdentifierException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 652
    iget p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->invalidFrames:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->invalidFrames:I

    goto :goto_1

    :catch_3
    move-exception v0

    .line 646
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":Empty Frame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/EmptyFrameException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 647
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->emptyFrameBytes:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->emptyFrameBytes:I

    goto/16 :goto_0

    .line 640
    :catch_4
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Found padding starting at:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method

.method public removeFrame(Ljava/lang/String;)V
    .locals 3

    .line 1406
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing frame with identifier:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1407
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->frameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    const-string v0, "TYER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1411
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->frameMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->frameMap:Ljava/util/Map;

    const-string v0, "TYERTDAT"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1416
    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->frameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public write(Ljava/io/File;J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 782
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 783
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writing tag to file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 787
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":bodybytebuffer:sizebeforeunsynchronisation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 790
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isUnsyncTags()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->requiresUnsynchronization([B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 791
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 793
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    move-result-object v0

    .line 794
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":bodybytebuffer:sizeafterunsynchronisation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_1
    move-object v6, v0

    .line 797
    array-length v0, v6

    add-int/lit8 v0, v0, 0xa

    long-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->calculateTagSize(II)I

    move-result v0

    .line 798
    array-length v1, v6

    add-int/lit8 v1, v1, 0xa

    sub-int v7, v0, v1

    .line 799
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":Current audiostart:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 800
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":Size including padding:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 801
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":Padding:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 803
    array-length v1, v6

    invoke-direct {p0, v7, v1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v3, p0

    move-object v4, p1

    move v8, v0

    move-wide v9, p2

    .line 804
    invoke-virtual/range {v3 .. v10}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->writeBufferToFile(Ljava/io/File;Ljava/nio/ByteBuffer;[BIIJ)V

    int-to-long p1, v0

    return-wide p1
.end method

.method public write(Ljava/nio/channels/WritableByteChannel;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 814
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Writing tag to channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 817
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":bodybytebuffer:sizebeforeunsynchronisation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 820
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isUnsyncTags()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->requiresUnsynchronization([B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 821
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 823
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    move-result-object v0

    .line 824
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":bodybytebuffer:sizeafterunsynchronisation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_1
    if-lez p2, :cond_2

    .line 830
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, v1, p2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->calculateTagSize(II)I

    move-result p2

    .line 831
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    sub-int v2, p2, v1

    .line 832
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":Padding:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 834
    :cond_2
    array-length p2, v0

    invoke-direct {p0, v2, p2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 836
    invoke-interface {p1, p2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 837
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 838
    invoke-virtual {p0, p1, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->writePadding(Ljava/nio/channels/WritableByteChannel;I)V

    return-void
.end method
