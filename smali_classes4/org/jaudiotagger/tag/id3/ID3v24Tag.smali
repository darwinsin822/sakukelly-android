.class public Lorg/jaudiotagger/tag/id3/ID3v24Tag;
.super Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;
.source "ID3v24Tag.java"


# static fields
.field public static final MAJOR_VERSION:B = 0x4t

.field public static final MASK_V24_COMPRESSION:I = 0x10

.field public static final MASK_V24_CRC_DATA_PRESENT:I = 0x20

.field public static final MASK_V24_DATA_LENGTH_INDICATOR:I = 0x2

.field public static final MASK_V24_ENCRYPTION:I = 0x8

.field public static final MASK_V24_EXPERIMENTAL:I = 0x20

.field public static final MASK_V24_EXTENDED_HEADER:I = 0x40

.field public static final MASK_V24_FILE_ALTER_PRESERVATION:I = 0x20

.field public static final MASK_V24_FOOTER_PRESENT:I = 0x10

.field public static final MASK_V24_FRAME_UNSYNCHRONIZATION:I = 0x4

.field public static final MASK_V24_GROUPING_IDENTITY:I = 0x40

.field public static final MASK_V24_IMAGE_ENCODING:I = 0x4

.field public static final MASK_V24_IMAGE_SIZE_RESTRICTIONS:I = 0x6

.field public static final MASK_V24_READ_ONLY:I = 0x10

.field public static final MASK_V24_TAG_ALTER_PRESERVATION:I = 0x40

.field public static final MASK_V24_TAG_RESTRICTIONS:I = 0x10

.field public static final MASK_V24_TAG_SIZE_RESTRICTIONS:I = -0x40

.field public static final MASK_V24_TAG_UPDATE:I = 0x40

.field public static final MASK_V24_TEXT_ENCODING_RESTRICTIONS:I = 0x20

.field public static final MASK_V24_TEXT_FIELD_SIZE_RESTRICTIONS:I = 0x18

.field public static final MASK_V24_UNSYNCHRONIZATION:I = 0x80

.field public static final RELEASE:B = 0x2t

.field public static final REVISION:B = 0x0t

.field protected static TAG_EXT_HEADER_CRC_DATA_LENGTH:I = 0x5

.field protected static TAG_EXT_HEADER_CRC_LENGTH:I = 0x6

.field protected static TAG_EXT_HEADER_LENGTH:I = 0x6

.field protected static TAG_EXT_HEADER_RESTRICTION_DATA_LENGTH:I = 0x1

.field protected static TAG_EXT_HEADER_RESTRICTION_LENGTH:I = 0x2

.field protected static TAG_EXT_HEADER_UPDATE_LENGTH:I = 0x1

.field protected static TAG_EXT_NUMBER_BYTES_DATA_LENGTH:I = 0x1

.field protected static final TYPE_CRCDATA:Ljava/lang/String; = "crcdata"

.field protected static final TYPE_EXPERIMENTAL:Ljava/lang/String; = "experimental"

.field protected static final TYPE_EXTENDED:Ljava/lang/String; = "extended"

.field protected static final TYPE_FOOTER:Ljava/lang/String; = "footer"

.field protected static final TYPE_IMAGEENCODINGRESTRICTION:Ljava/lang/String; = "imageEncodingRestriction"

.field protected static final TYPE_IMAGESIZERESTRICTION:Ljava/lang/String; = "imageSizeRestriction"

.field protected static final TYPE_PADDINGSIZE:Ljava/lang/String; = "paddingsize"

.field protected static final TYPE_TAGRESTRICTION:Ljava/lang/String; = "tagRestriction"

.field protected static final TYPE_TAGSIZERESTRICTION:Ljava/lang/String; = "tagSizeRestriction"

.field protected static final TYPE_TEXTENCODINGRESTRICTION:Ljava/lang/String; = "textEncodingRestriction"

.field protected static final TYPE_TEXTFIELDSIZERESTRICTION:Ljava/lang/String; = "textFieldSizeRestriction"

.field protected static final TYPE_UNSYNCHRONISATION:Ljava/lang/String; = "unsyncronisation"

.field protected static final TYPE_UPDATETAG:Ljava/lang/String; = "updateTag"


# instance fields
.field protected crcData:I

.field protected crcDataFlag:Z

.field protected experimental:Z

.field protected extended:Z

.field protected footer:Z

.field protected imageEncodingRestriction:B

.field protected imageSizeRestriction:B

.field protected paddingSize:I

.field protected tagRestriction:Z

.field protected tagSizeRestriction:B

.field protected textEncodingRestriction:B

.field protected textFieldSizeRestriction:B

.field protected unsynchronization:Z

.field protected updateTag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 310
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 185
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->experimental:Z

    .line 190
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 195
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 200
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcData:I

    .line 206
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 211
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 216
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 224
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 235
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 245
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 254
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 259
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->paddingSize:I

    .line 275
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 311
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->frameMap:Ljava/util/Map;

    .line 312
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->encryptedFrameMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/TagException;
        }
    .end annotation

    .line 650
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/TagException;
        }
    .end annotation

    .line 632
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 185
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->experimental:Z

    .line 190
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 195
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 200
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcData:I

    .line 206
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 211
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 216
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 224
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 235
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 245
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 254
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 259
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->paddingSize:I

    .line 275
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 633
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->frameMap:Ljava/util/Map;

    .line 634
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->encryptedFrameMap:Ljava/util/Map;

    .line 636
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .locals 6

    .line 505
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 185
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->experimental:Z

    .line 190
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 195
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 200
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcData:I

    .line 206
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 211
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 216
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 224
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 235
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 245
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 254
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 259
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->paddingSize:I

    .line 275
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 506
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":Creating tag from a tag of a different version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 507
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->frameMap:Ljava/util/Map;

    .line 508
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->encryptedFrameMap:Ljava/util/Map;

    if-eqz p1, :cond_a

    .line 513
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    if-nez v1, :cond_9

    .line 521
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    if-eqz v1, :cond_0

    .line 523
    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 525
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->copyFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    goto/16 :goto_2

    .line 528
    :cond_0
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    if-eqz v1, :cond_7

    .line 531
    move-object v1, p1

    check-cast v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 534
    iget-object v2, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 536
    new-instance v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIT2;

    iget-object v3, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIT2;-><init>(BLjava/lang/String;)V

    .line 537
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    const-string v4, "TIT2"

    invoke-direct {v3, v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 539
    invoke-virtual {p0, v3}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->setFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 541
    :cond_1
    iget-object v2, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 543
    new-instance v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPE1;

    iget-object v3, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPE1;-><init>(BLjava/lang/String;)V

    .line 544
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    const-string v4, "TPE1"

    invoke-direct {v3, v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 546
    invoke-virtual {p0, v3}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->setFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 548
    :cond_2
    iget-object v2, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 550
    new-instance v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTALB;

    iget-object v3, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTALB;-><init>(BLjava/lang/String;)V

    .line 551
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    const-string v4, "TALB"

    invoke-direct {v3, v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 553
    invoke-virtual {p0, v3}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->setFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 555
    :cond_3
    iget-object v2, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 557
    new-instance v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    iget-object v3, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;-><init>(BLjava/lang/String;)V

    .line 558
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    const-string v4, "TDRC"

    invoke-direct {v3, v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 560
    invoke-virtual {p0, v3}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->setFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 562
    :cond_4
    iget-object v2, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 564
    new-instance v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    const-string v3, ""

    iget-object v4, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    const-string v5, "ENG"

    invoke-direct {v2, v0, v5, v3, v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    const-string v4, "COMM"

    invoke-direct {v3, v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 567
    invoke-virtual {p0, v3}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->setFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 569
    :cond_5
    iget-byte v2, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-ltz v2, :cond_6

    iget-byte v2, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_6

    .line 571
    iget-byte v1, v1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    and-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getValueForId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    new-instance v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;

    invoke-direct {v2, v0, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;-><init>(BLjava/lang/String;)V

    .line 575
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    const-string v3, "TCON"

    invoke-direct {v1, v3}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 577
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->setFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 579
    :cond_6
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    if-eqz v1, :cond_a

    .line 581
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    .line 582
    iget-byte v1, p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    if-lez v1, :cond_a

    .line 584
    new-instance v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;

    iget-byte p1, p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    invoke-static {p1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;-><init>(BLjava/lang/String;)V

    .line 585
    new-instance p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    const-string v0, "TRCK"

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p1, v1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 587
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->setFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    goto :goto_2

    .line 592
    :cond_7
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/AbstractLyrics3;

    if-eqz v0, :cond_a

    .line 596
    instance-of v0, p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;

    if-eqz v0, :cond_8

    .line 598
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;

    check-cast p1, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;-><init>(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;)V

    goto :goto_0

    .line 602
    :cond_8
    new-instance v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    .line 604
    :goto_0
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 607
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 611
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;

    .line 612
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    invoke-direct {v1, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Field;)V

    .line 613
    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->setFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/InvalidTagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 617
    :catch_0
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Unable to convert Lyrics3 to v24 Frame:Frame Identifier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 515
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Copy Constructor not called. Please type cast the argument"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_2
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v24Tag;)V
    .locals 3

    .line 493
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 185
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->experimental:Z

    .line 190
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 195
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 200
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcData:I

    .line 206
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 211
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 216
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 224
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 235
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 245
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 254
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 259
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->paddingSize:I

    .line 275
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 494
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Creating tag from another tag of same type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 496
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->copyFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    return-void
.end method

.method private readExtendedHeader(Ljava/nio/ByteBuffer;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/InvalidTagException;
        }
    .end annotation

    .line 805
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    .line 808
    sget v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_LENGTH:I

    if-le p2, v0, :cond_6

    .line 814
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 817
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit8 v0, p2, 0x40

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 818
    :goto_0
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 819
    :goto_1
    iput-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v2

    .line 820
    :goto_2
    iput-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz v0, :cond_3

    .line 827
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 831
    :cond_3
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    if-eqz p2, :cond_4

    .line 834
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 835
    sget p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_DATA_LENGTH:I

    new-array v0, p2, [B

    .line 836
    invoke-virtual {p1, v0, v2, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 837
    iput v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcData:I

    move p2, v2

    .line 838
    :goto_3
    sget v3, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_DATA_LENGTH:I

    if-ge p2, v3, :cond_4

    .line 840
    iget v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcData:I

    shl-int/lit8 v3, v3, 0x8

    .line 841
    aget-byte v4, v0, p2

    add-int/2addr v3, v4

    iput v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcData:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 846
    :cond_4
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz p2, :cond_5

    .line 848
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 849
    new-array p2, v1, [B

    .line 850
    invoke-virtual {p1, p2, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 851
    aget-byte p1, p2, v2

    and-int/lit8 p2, p1, -0x40

    shr-int/lit8 p2, p2, 0x6

    int-to-byte p2, p2

    iput-byte p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    and-int/lit8 p2, p1, 0x20

    shr-int/lit8 p2, p2, 0x5

    int-to-byte p2, p2

    .line 852
    iput-byte p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    and-int/lit8 p2, p1, 0x18

    shr-int/lit8 p2, p2, 0x3

    int-to-byte p2, p2

    .line 853
    iput-byte p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    and-int/lit8 p2, p1, 0x4

    shr-int/lit8 p2, p2, 0x2

    int-to-byte p2, p2

    .line 854
    iput-byte p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    and-int/lit8 p1, p1, 0x6

    int-to-byte p1, p1

    .line 855
    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    :cond_5
    return-void

    .line 810
    :cond_6
    new-instance p1, Lorg/jaudiotagger/tag/InvalidTagException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_EXTENDED_HEADER_SIZE_TOO_SMALL:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jaudiotagger/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readHeaderFlags(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/TagException;
        }
    .end annotation

    .line 744
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

    .line 745
    :goto_0
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 746
    :goto_1
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 747
    :goto_2
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->experimental:Z

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3

    move v1, v2

    .line 748
    :cond_3
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    .line 753
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 758
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 763
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 768
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 772
    :cond_7
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->isUnsynchronization()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 774
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_UNSYNCHRONIZED:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 777
    :cond_8
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    if-eqz p1, :cond_9

    .line 779
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_EXTENDED:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 782
    :cond_9
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->experimental:Z

    if-eqz p1, :cond_a

    .line 784
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_EXPERIMENTAL:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 787
    :cond_a
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    if-eqz p1, :cond_b

    .line 789
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_FOOTER:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 968
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 973
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    .line 974
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->experimental:Z

    .line 975
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    const/16 v1, 0xa

    .line 978
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 980
    sget-object v2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_ID:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 983
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getMajorVersion()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 986
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getRevision()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 990
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->isUnsynchronization()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x80

    int-to-byte v2, v2

    goto :goto_0

    :cond_0
    move v2, v0

    .line 994
    :goto_0
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    .line 998
    :cond_1
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->experimental:Z

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    .line 1002
    :cond_2
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    .line 1006
    :cond_3
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1011
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    if-eqz v2, :cond_6

    .line 1013
    sget v2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_LENGTH:I

    .line 1014
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    if-eqz v3, :cond_4

    .line 1016
    sget v3, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_UPDATE_LENGTH:I

    add-int/2addr v2, v3

    .line 1018
    :cond_4
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    if-eqz v3, :cond_5

    .line 1020
    sget v3, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v2, v3

    .line 1022
    :cond_5
    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz v3, :cond_7

    .line 1024
    sget v3, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_RESTRICTION_LENGTH:I

    add-int/2addr v2, v3

    goto :goto_1

    :cond_6
    move v2, v0

    :cond_7
    :goto_1
    add-int/2addr p1, p2

    add-int/2addr p1, v2

    .line 1029
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->valueToBuffer(I)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1033
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    if-eqz p1, :cond_10

    .line 1036
    sget p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_LENGTH:I

    .line 1037
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    if-eqz p2, :cond_8

    .line 1039
    sget p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_UPDATE_LENGTH:I

    add-int/2addr p1, p2

    .line 1041
    :cond_8
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    if-eqz p2, :cond_9

    .line 1043
    sget p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr p1, p2

    .line 1045
    :cond_9
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz p2, :cond_a

    .line 1047
    sget p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_RESTRICTION_LENGTH:I

    add-int/2addr p1, p2

    .line 1049
    :cond_a
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 1050
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1052
    sget p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_NUMBER_BYTES_DATA_LENGTH:I

    int-to-byte p1, p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1055
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    if-eqz p1, :cond_b

    const/16 p1, 0x40

    int-to-byte p1, p1

    goto :goto_2

    :cond_b
    move p1, v0

    .line 1059
    :goto_2
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    if-eqz v2, :cond_c

    or-int/lit8 p1, p1, 0x20

    int-to-byte p1, p1

    .line 1063
    :cond_c
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz v2, :cond_d

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    .line 1067
    :cond_d
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1069
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    if-eqz p1, :cond_e

    .line 1071
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1074
    :cond_e
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    if-eqz p1, :cond_f

    .line 1076
    sget p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_DATA_LENGTH:I

    int-to-byte p1, p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1077
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1078
    iget p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcData:I

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1081
    :cond_f
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz p1, :cond_11

    .line 1083
    sget p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_RESTRICTION_DATA_LENGTH:I

    int-to-byte p1, p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1085
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_10
    const/4 p2, 0x0

    :cond_11
    :goto_3
    if-eqz p2, :cond_12

    .line 1091
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1092
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1095
    :cond_12
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v1
.end method


# virtual methods
.method public addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 4

    .line 352
    :try_start_0
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->copyFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    goto :goto_1

    .line 358
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->convertFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)Ljava/util/List;

    move-result-object v0

    .line 359
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 361
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->copyFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/InvalidFrameException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":Unable to convert frame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;)V"
        }
    .end annotation

    .line 428
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    if-eqz v0, :cond_9

    .line 431
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 432
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/TagField;

    .line 433
    instance-of v2, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyUnsupported;

    if-eqz v2, :cond_1

    .line 434
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 436
    :cond_1
    instance-of v2, v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    if-eqz v2, :cond_0

    .line 438
    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 442
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 444
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 448
    :cond_3
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    instance-of p2, p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    if-eqz p2, :cond_8

    .line 450
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    .line 451
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    .line 454
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getOriginalID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 459
    :cond_4
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getOriginalID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TYER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 461
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    goto :goto_1

    .line 463
    :cond_5
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getOriginalID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 465
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->isMonthOnly()Z

    move-result p1

    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setMonthOnly(Z)V

    goto :goto_1

    .line 468
    :cond_6
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getOriginalID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 470
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setTime(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->isHoursOnly()Z

    move-result p1

    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setHoursOnly(Z)V

    .line 473
    :cond_7
    :goto_1
    const-string p1, "Text"

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getFormattedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 478
    :cond_8
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Found duplicate TDRC frame in invalid situation,discarding:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_2

    .line 483
    :cond_9
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
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

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/ID3v22Frame;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IPL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    invoke-direct {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 385
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 389
    :cond_0
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IPLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 391
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v1

    .line 392
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 394
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 396
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 399
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 401
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    move-object v3, p1

    check-cast v3, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    const-string v4, "TIPL"

    invoke-direct {v1, v3, v4}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Lorg/jaudiotagger/tag/id3/ID3v23Frame;Ljava/lang/String;)V

    .line 402
    new-instance v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result p1

    invoke-direct {v3, p1, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;-><init>(BLjava/util/List;)V

    .line 403
    invoke-virtual {v1, v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 404
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 409
    :cond_2
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    invoke-direct {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-object v0
.end method

.method protected copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 3

    .line 322
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Copying primitives"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 323
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 325
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_0

    .line 327
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    .line 328
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    .line 329
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 330
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    .line 331
    iget-byte v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 332
    iget-byte v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 333
    iget-byte v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 334
    iget-byte v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 335
    iget-byte p1, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    :cond_0
    return-void
.end method

.method public createArtworkField([BLjava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 3

    .line 1368
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    move-result-object v0

    .line 1369
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 1370
    const-string v2, "PictureData"

    invoke-virtual {v1, v2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1371
    const-string p1, "PictureType"

    sget-object v2, Lorg/jaudiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1372
    const-string p1, "MIMEType"

    invoke-virtual {v1, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1373
    const-string p1, "Description"

    const-string p2, ""

    invoke-virtual {v1, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public varargs createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;,
            Lorg/jaudiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1393
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 1399
    aget-object p2, p2, v0

    if-eqz p2, :cond_1

    .line 1404
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object p1

    .line 1405
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    move-result-object p1

    .line 1406
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;

    .line 1408
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp3GenresAsText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1410
    invoke-virtual {v0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 1414
    :cond_0
    invoke-static {p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->convertGenericToID3v24Genre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->setText(Ljava/lang/String;)V

    :goto_0
    return-object p1

    .line 1402
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1397
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1420
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 1390
    :cond_4
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public createField(Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;,
            Lorg/jaudiotagger/tag/FieldDataInvalidException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1221
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->getSubId()Ljava/lang/String;

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

    .line 1219
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

    .line 1331
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    move-result-object v0

    .line 1332
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 1333
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->isLinked()Z

    move-result v2

    const-string v3, "Description"

    const-string v4, "MIMEType"

    const-string v5, "PictureType"

    const-string v6, "PictureData"

    if-nez v2, :cond_0

    .line 1335
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getBinaryData()[B

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1336
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getPictureType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1337
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1338
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 1345
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

    .line 1351
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getPictureType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1352
    const-string v2, "-->"

    invoke-virtual {v1, v4, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1353
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 1349
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    move-result-object p1

    return-object p1
.end method

.method public createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v24Frame;
    .locals 1

    .line 1199
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createStructure()V
    .locals 5

    .line 1151
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    invoke-super {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructureHeader()V

    .line 1156
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, ""

    const-string v3, "header"

    invoke-virtual {v0, v3, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "unsyncronisation"

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->isUnsynchronization()Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 1158
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "crcdata"

    iget v4, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcData:I

    invoke-virtual {v0, v1, v4}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1159
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "experimental"

    iget-boolean v4, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->experimental:Z

    invoke-virtual {v0, v1, v4}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 1160
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "extended"

    iget-boolean v4, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    invoke-virtual {v0, v1, v4}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 1161
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "paddingsize"

    iget v4, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->paddingSize:I

    invoke-virtual {v0, v1, v4}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1162
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "footer"

    iget-boolean v4, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    invoke-virtual {v0, v1, v4}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 1163
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "imageEncodingRestriction"

    iget v4, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->paddingSize:I

    invoke-virtual {v0, v1, v4}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1164
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "imageSizeRestriction"

    iget-byte v4, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    invoke-virtual {v0, v1, v4}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1165
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "tagRestriction"

    iget-boolean v4, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    invoke-virtual {v0, v1, v4}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 1166
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "tagSizeRestriction"

    iget-byte v4, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    invoke-virtual {v0, v1, v4}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1167
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "textFieldSizeRestriction"

    iget-byte v4, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    invoke-virtual {v0, v1, v4}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1168
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "textEncodingRestriction"

    iget-byte v4, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    invoke-virtual {v0, v1, v4}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1169
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "updateTag"

    iget-boolean v4, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    invoke-virtual {v0, v1, v4}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 1170
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 1173
    invoke-super {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructureBody()V

    .line 1175
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 2

    .line 1272
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V

    return-void
.end method

.method public deleteField(Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1263
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->getSubId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V

    return-void

    .line 1261
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 697
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 701
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    .line 702
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    iget-boolean v3, v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->footer:Z

    if-eq v2, v3, :cond_1

    return v1

    .line 706
    :cond_1
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    iget-byte v3, v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    if-eq v2, v3, :cond_2

    return v1

    .line 710
    :cond_2
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    iget-byte v3, v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    if-eq v2, v3, :cond_3

    return v1

    .line 714
    :cond_3
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    iget-boolean v3, v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 718
    :cond_4
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    iget-byte v3, v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    if-eq v2, v3, :cond_5

    return v1

    .line 722
    :cond_5
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    iget-byte v3, v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    if-eq v2, v3, :cond_6

    return v1

    .line 726
    :cond_6
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    iget-byte v3, v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    if-eq v2, v3, :cond_7

    return v1

    .line 730
    :cond_7
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    iget-boolean v0, v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    if-ne v2, v0, :cond_8

    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public getAll(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 2
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

    .line 1432
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_1

    .line 1434
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    .line 1435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 1436
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 1438
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 1439
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;

    .line 1441
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

    .line 1443
    invoke-static {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->convertID3v24GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    .line 1450
    :cond_1
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

    .line 1305
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 1306
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1308
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    .line 1310
    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 1311
    invoke-static {}, Lorg/jaudiotagger/tag/images/ArtworkFactory;->getNew()Lorg/jaudiotagger/tag/images/Artwork;

    move-result-object v3

    .line 1312
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jaudiotagger/tag/images/Artwork;->setMimeType(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getPictureType()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/jaudiotagger/tag/images/Artwork;->setPictureType(I)V

    .line 1314
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jaudiotagger/tag/images/Artwork;->setDescription(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->isImageUrl()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 1317
    invoke-interface {v3, v4}, Lorg/jaudiotagger/tag/images/Artwork;->setLinked(Z)V

    .line 1318
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/jaudiotagger/tag/images/Artwork;->setImageUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 1322
    :cond_0
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getImageData()[B

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/jaudiotagger/tag/images/Artwork;->setBinaryData([B)V

    .line 1324
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1238
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v24Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getGenericKeyFromId3(Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;)Lorg/jaudiotagger/tag/FieldKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1241
    invoke-super {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1245
    :cond_0
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->getSubId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1246
    invoke-super {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doGetValueAtIndex(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1235
    :cond_1
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method protected getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;
    .locals 3

    if-eqz p1, :cond_1

    .line 1281
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v24Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getId3KeyFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1286
    new-instance v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v24FieldKey;->getSubId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, p1, v2, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1284
    :cond_0
    new-instance v0, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1279
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

    .line 1291
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v24Frames;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 658
    const-string v0, "ID3v2.40"

    return-object v0
.end method

.method public getMajorVersion()B
    .locals 1

    const/4 v0, 0x4

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

    .line 1300
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;->getInstanceof()Lorg/jaudiotagger/tag/id3/ID3v24PreferredFrameOrderComparator;

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
    .locals 4

    .line 670
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    const/16 v1, 0xa

    if-eqz v0, :cond_2

    .line 672
    sget v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_LENGTH:I

    add-int/2addr v0, v1

    .line 673
    iget-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->updateTag:Z

    if-eqz v1, :cond_0

    .line 675
    sget v1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_UPDATE_LENGTH:I

    add-int/2addr v0, v1

    .line 677
    :cond_0
    iget-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->crcDataFlag:Z

    if-eqz v1, :cond_1

    .line 679
    sget v1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v0, v1

    :cond_1
    move v1, v0

    .line 681
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz v0, :cond_2

    .line 683
    sget v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_RESTRICTION_LENGTH:I

    add-int/2addr v1, v0

    .line 686
    :cond_2
    invoke-super {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 687
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":Tag Size is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    return v1
.end method

.method public getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/KeyNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1471
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_1

    .line 1473
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1474
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1476
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 1477
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;

    .line 1478
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->convertID3v24GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1480
    :cond_0
    const-string p1, ""

    return-object p1

    .line 1484
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1468
    :cond_2
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public isUnsynchronization()Z
    .locals 1

    .line 1188
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->unsynchronization:Z

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/TagException;
        }
    .end annotation

    .line 867
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 871
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->readHeaderFlags(Ljava/nio/ByteBuffer;)V

    .line 874
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 875
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":Reading tag from file size set in header is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 877
    iget-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->extended:Z

    if-eqz v1, :cond_0

    .line 879
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->readExtendedHeader(Ljava/nio/ByteBuffer;I)V

    .line 884
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->readFrames(Ljava/nio/ByteBuffer;I)V

    return-void

    .line 869
    :cond_1
    new-instance p1, Lorg/jaudiotagger/tag/TagNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getIdentifier()Ljava/lang/String;

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
    .locals 4

    .line 894
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Start of frame body at"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 897
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->frameMap:Ljava/util/Map;

    .line 898
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->encryptedFrameMap:Ljava/util/Map;

    .line 901
    iput p2, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->fileReadSize:I

    .line 903
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 904
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 910
    :try_start_0
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":looking for next frame at:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 911
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 912
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 913
    invoke-virtual {p0, v1, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->loadFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/PaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/jaudiotagger/tag/EmptyFrameException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/jaudiotagger/tag/InvalidFrameIdentifierException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jaudiotagger/tag/InvalidFrameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jaudiotagger/tag/InvalidDataTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 946
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 947
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->invalidFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->invalidFrames:I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 937
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 938
    iget p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->invalidFrames:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->invalidFrames:I

    goto/16 :goto_1

    :catch_2
    move-exception p1

    .line 929
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

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

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 930
    iget p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->invalidFrames:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->invalidFrames:I

    goto :goto_1

    :catch_3
    move-exception v0

    .line 924
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 925
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->emptyFrameBytes:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->emptyFrameBytes:I

    goto/16 :goto_0

    .line 918
    :catch_4
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

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

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method

.method public write(Ljava/io/File;J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1105
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 1106
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Writing tag to file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1112
    array-length v0, v4

    add-int/lit8 v0, v0, 0xa

    long-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->calculateTagSize(II)I

    move-result v0

    .line 1115
    array-length v1, v4

    add-int/lit8 v1, v1, 0xa

    sub-int v5, v0, v1

    .line 1117
    array-length v1, v4

    invoke-direct {p0, v5, v1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v6, v0

    move-wide v7, p2

    .line 1118
    invoke-virtual/range {v1 .. v8}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->writeBufferToFile(Ljava/io/File;Ljava/nio/ByteBuffer;[BIIJ)V

    int-to-long p1, v0

    return-wide p1
.end method

.method public write(Ljava/nio/channels/WritableByteChannel;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1128
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Writing tag to channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-lez p2, :cond_0

    .line 1136
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, v1, p2}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->calculateTagSize(II)I

    move-result p2

    .line 1137
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1139
    :goto_0
    array-length v1, v0

    invoke-direct {p0, p2, v1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1141
    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1142
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1143
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->writePadding(Ljava/nio/channels/WritableByteChannel;I)V

    return-void
.end method
