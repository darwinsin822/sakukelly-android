.class public Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;
.super Ljava/lang/Object;
.source "Mp4InfoReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-string v0, "org.jaudiotagger.audio.mp4.atom"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isTrackAtomVideo(Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MDIA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 72
    :cond_0
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MDHD:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p1

    if-nez p1, :cond_1

    return p2

    .line 77
    :cond_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MINF:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p1

    if-nez p1, :cond_2

    return p2

    .line 83
    :cond_2
    sget-object p1, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->VMHD:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return p2
.end method


# virtual methods
.method public read(Ljava/nio/file/Path;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/audio/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 93
    new-array v1, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    .line 94
    :try_start_0
    new-instance v1, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;

    invoke-direct {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;-><init>()V

    .line 97
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->FTYP:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 102
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 103
    invoke-interface {p1, v3}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 104
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 105
    new-instance v4, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;

    invoke-direct {v4, v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 106
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->processData()V

    .line 107
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;->getMajorBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setBrand(Ljava/lang/String;)V

    .line 111
    sget-object v2, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MOOV:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 116
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 117
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 118
    invoke-interface {p1, v2}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 119
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 123
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MVHD:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 128
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 129
    new-instance v5, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;

    invoke-direct {v5, v3, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 130
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MvhdBox;->getPreciseLength()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setPreciseLength(D)V

    .line 132
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v3

    add-int/2addr v5, v3

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->TRAK:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 141
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v3

    add-int/2addr v5, v3

    .line 144
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MDIA:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 150
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MDHD:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 155
    new-instance v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 156
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MdhdBox;->getSampleRate()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setSamplingRate(I)V

    .line 171
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v3

    add-int/2addr v6, v3

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 172
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MINF:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 180
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 181
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->SMHD:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    if-nez v6, :cond_1

    .line 184
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 185
    sget-object v0, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->VMHD:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadVideoException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_IS_VIDEO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadVideoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 199
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->STBL:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 209
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 210
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->STSD:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 213
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4StsdBox;

    invoke-direct {v7, v6, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StsdBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 214
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StsdBox;->processData()V

    .line 215
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 218
    sget-object v7, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->MP4A:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 221
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 222
    new-instance v8, Lorg/jaudiotagger/audio/mp4/atom/Mp4Mp4aBox;

    invoke-direct {v8, v7, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4Mp4aBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 223
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4Mp4aBox;->processData()V

    .line 225
    sget-object v7, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->ESDS:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 228
    new-instance v8, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-direct {v8, v7, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 231
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getAvgBitrate()I

    move-result v6

    sget v7, Lorg/jaudiotagger/audio/generic/Utils;->KILOBYTE_MULTIPLIER:I

    div-int/2addr v6, v7

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setBitRate(I)V

    .line 234
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getNumberOfChannels()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setChannelNumber(I)V

    .line 236
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getKind()Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setKind(Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;)V

    .line 237
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getAudioProfile()Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setProfile(Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;)V

    .line 239
    sget-object v6, Lorg/jaudiotagger/audio/mp4/EncoderType;->AAC:Lorg/jaudiotagger/audio/mp4/EncoderType;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setEncodingType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 245
    :cond_2
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 246
    sget-object v7, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->DRMS:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 249
    new-instance v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4DrmsBox;

    invoke-direct {v6, v7, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4DrmsBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 250
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4DrmsBox;->processData()V

    .line 253
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->ESDS:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 256
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 259
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getAvgBitrate()I

    move-result v6

    sget v8, Lorg/jaudiotagger/audio/generic/Utils;->KILOBYTE_MULTIPLIER:I

    div-int/2addr v6, v8

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setBitRate(I)V

    .line 262
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getNumberOfChannels()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setChannelNumber(I)V

    .line 264
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getKind()Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setKind(Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;)V

    .line 265
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox;->getAudioProfile()Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setProfile(Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;)V

    .line 267
    sget-object v6, Lorg/jaudiotagger/audio/mp4/EncoderType;->DRM_AAC:Lorg/jaudiotagger/audio/mp4/EncoderType;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setEncodingType(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_3
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 274
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->ALAC:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 278
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;

    invoke-direct {v7, v6, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 279
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->processData()V

    .line 282
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->ALAC:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 285
    new-instance v7, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;

    invoke-direct {v7, v6, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 286
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->processData()V

    .line 287
    sget-object v6, Lorg/jaudiotagger/audio/mp4/EncoderType;->APPLE_LOSSLESS:Lorg/jaudiotagger/audio/mp4/EncoderType;

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->getChannels()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setChannelNumber(I)V

    .line 289
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->getBitRate()I

    move-result v6

    sget v8, Lorg/jaudiotagger/audio/generic/Utils;->KILOBYTE_MULTIPLIER:I

    div-int/2addr v6, v8

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setBitRate(I)V

    .line 290
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/atom/Mp4AlacBox;->getSampleSize()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setBitsPerSample(I)V

    .line 298
    :cond_4
    :goto_0
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 299
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->STCO:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 302
    new-instance v6, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    invoke-direct {v6, v3, v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 303
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v3

    int-to-long v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setAudioDataStartPosition(Ljava/lang/Long;)V

    .line 304
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setAudioDataEndPosition(Ljava/lang/Long;)V

    .line 305
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v7

    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v3

    int-to-long v9, v3

    sub-long/2addr v7, v9

    invoke-virtual {v1, v7, v8}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setAudioDataLength(J)V

    .line 309
    :cond_5
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->getChannelNumber()I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_6

    const/4 v3, 0x2

    .line 311
    invoke-virtual {v1, v3}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setChannelNumber(I)V

    .line 315
    :cond_6
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->getBitRateAsNumber()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v3, v7, v9

    if-nez v3, :cond_7

    const/16 v3, 0x80

    .line 317
    invoke-virtual {v1, v3}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setBitRate(I)V

    .line 321
    :cond_7
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->getBitsPerSample()I

    move-result v3

    if-ne v3, v6, :cond_8

    const/16 v3, 0x10

    .line 323
    invoke-virtual {v1, v3}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setBitsPerSample(I)V

    .line 327
    :cond_8
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->getEncodingType()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 329
    sget-object v3, Lorg/jaudiotagger/audio/mp4/EncoderType;->AAC:Lorg/jaudiotagger/audio/mp4/EncoderType;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 332
    :cond_9
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 338
    :goto_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 340
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->TRAK:Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 343
    invoke-direct {p0, v4, v3, v2}, Lorg/jaudiotagger/audio/mp4/Mp4InfoReader;->isTrackAtomVideo(Lorg/jaudiotagger/audio/mp4/atom/Mp4FtypBox;Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    .line 345
    :cond_a
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadVideoException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_IS_VIDEO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadVideoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_b
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->getEncodingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;->setFormat(Ljava/lang/String;)V

    .line 358
    new-instance v2, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;

    invoke-direct {v2, p1, v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;-><init>(Ljava/nio/channels/SeekableByteChannel;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_c

    .line 360
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->close()V

    :cond_c
    return-object v1

    .line 202
    :cond_d
    :try_start_1
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_e
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_f
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_10
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_11
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_12
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_13
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_14
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_FILE_NOT_CONTAINER:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 93
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_15

    .line 360
    :try_start_3
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15
    :goto_2
    throw v1
.end method
